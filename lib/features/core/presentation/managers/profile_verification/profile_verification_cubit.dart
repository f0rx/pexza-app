library profile_verification_cubit.dart;

import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart' hide Response;
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:pexza/features/core/data/models/failure/general_failure.dart';
import 'package:pexza/features/core/data/repositories/profile_verification/profile_verification_repository.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/utils/utils.dart' hide ListX;

part 'profile_verification_state.dart';
part 'profile_verification_cubit.freezed.dart';

@injectable
class ProfileVerificationCubit extends Cubit<ProfileVerificationState> {
  final ProfileVerificationRepository _repository;
  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;
  final ImagePicker picker = ImagePicker();

  ProfileVerificationCubit(
    this._repository,
    this._connectivity,
    this._dataConnectionChecker,
  ) : super(ProfileVerificationState.initial());

  void toggleLoading([bool isLoading]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  void documentTypeChanged(Map<String, dynamic> value) =>
      emit(state.copyWith(documentType: value));

  Future<void> checkInternetAndConnectivity([bool shouldThrow = false]) async {
    final isConnected =
        (await _connectivity.checkConnectivity()) != ConnectivityResult.none;

    if (!isConnected) {
      if (shouldThrow) throw GeneralFailure.noInternetConnection();
      emit(state.copyWith(
        response: some(left(GeneralFailure.noInternetConnection())),
      ));
    }

    final hasInternet = await _dataConnectionChecker.hasConnection;

    if (isConnected && !hasInternet) {
      if (shouldThrow) throw GeneralFailure.poorInternetConnection();
      emit(state.copyWith(
        response: some(left(GeneralFailure.poorInternetConnection())),
      ));
    }
  }

  void pickCamera() async {
    File file;
    String fileName;

    PickedFile _result = await picker.getImage(source: ImageSource.camera);

    if (_result == null) {
      file = await _attemptFileRetrieval(picker);
      fileName = p.basenameWithoutExtension(file.path);
    } else {
      file = File(_result.path);
      fileName = p.basenameWithoutExtension(file.path);
    }

    if (file != null)
      emit(state.copyWith(
        document: file,
        mimeType: _resolveMimeType(file),
        isImageDocument: true,
        documentName: fileName,
      ));
  }

  void pickDocument() async {
    File file;
    String fileName;

    FilePickerResult _result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
      allowCompression: false,
    );

    if (_result != null) {
      file = File(_result.files.first.path);
      fileName = p.basenameWithoutExtension(file.path);
    }

    DocumentMimeType mime = _resolveMimeType(file);

    if (file != null)
      emit(state.copyWith(
        document: file,
        mimeType: mime,
        isImageDocument: mime == DocumentMimeType.img,
        documentName: fileName,
      ));
  }

  void submit() async {
    toggleLoading();

    emit(state.copyWith(validate: true));

    try {
      if (state.document == null)
        emit(state.copyWith(
          response: some(left(GeneralFailure.noDocumentSelected(
            UniqueId.int().value,
          ))),
        ));

      if (state.documentType != null) {
        // check if user has good internet connection
        await checkInternetAndConnectivity(true);

        // upload document to server
        await _repository.uploadDocument(
          state.documentType.entries.firstOrNull?.key,
          state.document,
        );

        emit(state.copyWith(
          response: some(right(InfoResponse(
            message: "Document uploaded successfully!",
            position: BottomAlertDialogPosition.top,
            uuid: 'document--uploaded-uuid',
          ))),
        ));

        Future.delayed(
          const Duration(milliseconds: 800),
          () => emit(state.copyWith(
            response: some(right(InfoResponse(
              message: "Your document is undergoing review..",
              position: BottomAlertDialogPosition.bottom,
              uuid: "reviewing--nonunique-uuid",
            ))),
          )),
        );
      }
    } on Failure catch (e) {
      emit(state.copyWith(response: some(left(e))));
    } catch (_) {
      if (_.runtimeType is DioError || _.runtimeType == DioError)
        _handleDioFailures(_);
    }

    toggleLoading();
  }

  Future<File> _attemptFileRetrieval(ImagePicker picker) async {
    if (picker == null) return null;
    final LostData _response = await picker.getLostData();
    if (!_response.isEmpty) return File(_response.file.path);
    return null;
  }

  DocumentMimeType _resolveMimeType(File file) {
    if (file == null) return null;

    String _extension = p.extension(file.path);

    switch (_extension) {
      case ".jpg":
      case ".jpeg":
      case ".png":
        return DocumentMimeType.img;
      case ".doc":
      case ".docx":
        return DocumentMimeType.doc;
      case ".pdf":
        return DocumentMimeType.pdf;
      default:
        return null;
    }
  }

  void _handleDioFailures(DioError ex) {
    log.wtf(ex);
    switch (ex?.type) {
      case DioErrorType.CONNECT_TIMEOUT:
        emit(state.copyWith(
          response: some(left(GeneralFailure.poorInternetConnection())),
        ));
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        emit(state.copyWith(
          response: some(left(GeneralFailure.receiveTimeout())),
        ));
        break;
      case DioErrorType.RESPONSE:
        emit(state.copyWith(
          response: some(left(GeneralFailure.fromJson(
            ex.response.data,
          ))),
        ));
        break;
      case DioErrorType.SEND_TIMEOUT:
        emit(state.copyWith(
          response: some(left(GeneralFailure.timeout())),
        ));
        break;
      // case DioErrorType.DEFAULT:
      default:
        emit(state.copyWith(
          response: some(left(GeneralFailure.unknown())),
        ));
    }
  }
}
