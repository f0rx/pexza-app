import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/core/presentation/managers/index.dart';
import 'package:pexza/features/core/presentation/widgets/index.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

/// A stateless widget to render ProfileVerificationScreen.
class ProfileVerificationScreen extends StatelessWidget with AutoRouteWrapper {
  final String intended;

  const ProfileVerificationScreen({
    Key key,
    @required this.intended,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProfileVerificationCubit>(),
      child: BlocListener<ProfileVerificationCubit, ProfileVerificationState>(
        listenWhen: (p, c) =>
            p.response.getOrElse(() => null) !=
            c.response.getOrElse(() => null),
        listener: (c, s) => s.response.fold(
          () => null,
          (either) => BottomAlertDialog.init(
            c,
            duration: either.fold(
              (l) => null,
              (r) => r.fold(
                info: (i) => i.uuid == 'document--uploaded-uuid'
                    ? null
                    : const Duration(seconds: 4),
              ),
            ),
            message: either.fold(
              (f) => f?.message ?? f?.error,
              (r) => r?.message ?? r?.details,
            ),
            icon: either.fold(
              (_) => null,
              (r) => r.fold(
                info: (i) => i.uuid == 'document--uploaded-uuid'
                    ? Icons.check_circle_rounded
                    : Icons.info,
                success: (_) => Icons.check_circle_rounded,
              ),
            ),
            iconColor: either.fold(
              (_) => null,
              (r) => r.fold(
                info: (i) => i.uuid == 'document--uploaded-uuid'
                    ? AppColors.successGreen
                    : Colors.blueAccent,
                success: (_) => AppColors.successGreen,
              ),
            ),
            position: either.fold((l) => null, (r) => r.position),
            shouldIconPulse: either.fold((_) => null, (r) => false),
            callback: either.fold(
              (_) => null,
              (r) => r.fold(
                info: (i) => i.uuid == 'reviewing--nonunique-uuid'
                    ? (_) => Future.delayed(
                          const Duration(seconds: 5),
                          () => navigator.popUntilPath(intended),
                        )
                    : null,
                success: (s) => s.popRoute == true
                    ? (_) => navigator.popUntilPath(intended)
                    : null,
              ),
            ),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(),
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              clipBehavior: Clip.antiAlias,
              controller: ScrollController(),
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: Helpers.appPadding,
              ).copyWith(top: App.longest * 0.015),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: AutoSizeText(
                        'Upload Identification',
                        softWrap: true,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              color: Helpers.optionOf(
                                AppColors.accentColor,
                                AppColors.accentColor.shade200,
                              ),
                              fontSize: 27.0,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.04)),
                    //
                    Flexible(
                      child: AutoSizeText(
                        'Please select a means of Identification and upload a matching ID.',
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              // color: Colors.grey.shade700,
                              fontSize: 16.0,
                              // letterSpacing: Helpers.letterSpacing,
                            ),
                      ),
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.04)),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.04)),
                    //
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // TextFormInputLabel(text: 'Country'),
                          //
                          Flexible(
                            child: BlocBuilder<ProfileVerificationCubit,
                                ProfileVerificationState>(
                              builder: (c, s) =>
                                  DropdownFieldWidget<Map<String, dynamic>>(
                                hint: '-- Select ID to Upload --',
                                items: ProfileVerificationState.documentTypes
                                    .map<
                                        DropdownMenuItem<Map<String, dynamic>>>(
                                      (item) => DropdownMenuItem<
                                          Map<String, dynamic>>(
                                        value: item,
                                        child: AutoSizeText(
                                          "${item?.entries?.firstOrNil?.value}",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: true,
                                        ),
                                      ),
                                    )
                                    .toList(),
                                validate: s.validate,
                                selected: s.documentType,
                                onChanged: c
                                    .read<ProfileVerificationCubit>()
                                    .documentTypeChanged,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.04)),
                    //
                    BlocBuilder<ProfileVerificationCubit,
                        ProfileVerificationState>(
                      builder: (c, s) => DottedBorder(
                        dashPattern: [6, 3, 2, 3],
                        borderType: BorderType.RRect,
                        padding: EdgeInsets.all(5.0),
                        radius: Radius.circular(Helpers.buttonRadius),
                        color: Helpers.computeLuminance(
                            Theme.of(context).scaffoldBackgroundColor),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: App.shortest * 0.5,
                            maxWidth: double.infinity,
                          ),
                          child: Material(
                            child: InkWell(
                              onTap: () async {
                                await showAdaptiveBottomSheet(
                                  context,
                                  builder: (_) => _DocumentPickerSheet(
                                    pickers: [
                                      _DocumentPicker(
                                        name: 'Camera',
                                        asset: Helpers.optionOf(
                                          AppAssets.cameraColored,
                                          AppAssets.cameraOutlined,
                                        ),
                                        onPressed: c
                                            .read<ProfileVerificationCubit>()
                                            .pickCamera,
                                      ),
                                      _DocumentPicker(
                                        name: 'File Explorer',
                                        asset: Helpers.optionOf(
                                          AppAssets.folderColored,
                                          AppAssets.folderOutlined,
                                        ),
                                        onPressed: c
                                            .read<ProfileVerificationCubit>()
                                            .pickDocument,
                                      ),
                                    ],
                                  ),
                                  // enableDrag: false,
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    Helpers.buttonRadius,
                                  ),
                                  color: Helpers.optionOf(
                                    AppColors.primaryColor.shade600,
                                    AppColors.secondaryColor.shade400,
                                  ),
                                ),
                                child: Center(
                                  child: s.mimeType == null
                                      ? Icon(
                                          Theme.of(context).platform.fold(
                                                material: () =>
                                                    Icons.photo_camera,
                                                cupertino: () =>
                                                    CupertinoIcons.camera,
                                              ),
                                          color: Colors.grey,
                                          size: 45.0,
                                        )
                                      : s.mimeType.fold(
                                          img: Image.file(
                                            s.document,
                                            fit: BoxFit.cover,
                                          ),
                                          doc: (a) => Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              a == DocumentMimeType.pdf
                                                  ? AppAssets.pdf
                                                  : AppAssets.docx,
                                              VerticalSpace(height: 20),
                                              AutoSizeText("${s.documentName}"),
                                            ],
                                          ),
                                        ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //
          Positioned(
            left: 0,
            right: 0,
            bottom: App.shortest * 0.1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
              child: BlocBuilder<ProfileVerificationCubit,
                  ProfileVerificationState>(
                builder: (c, s) => Visibility(
                  visible: !s.isLoading,
                  replacement: Center(child: Helpers.circularLoader()),
                  child: AppElevatedButton(
                    onPressed: context.read<ProfileVerificationCubit>().submit,
                    text: 'Verify ID & Continue',
                    textColor: Colors.white,
                    backgroundColor: AppColors.accentColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DocumentPickerSheet extends StatelessWidget {
  final List<_DocumentPicker> pickers;

  const _DocumentPickerSheet({
    Key key,
    this.pickers = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 0.15.sh,
        child: LayoutBuilder(
          builder: (_, constraints) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...ListTile.divideTiles(
                context: context,
                tiles: pickers.map(
                  (p) => InkWell(
                    onTap: () {
                      p.onPressed?.call();
                      navigator.pop();
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
                      child: SizedBox(
                        height: constraints.maxHeight / pickers.length,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 2,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(child: p.asset),
                                  //
                                  HorizontalSpace(width: 0.04.sw),
                                  //
                                  Flexible(
                                    child: AutoSizeText(
                                      p.name,
                                      style: TextStyle(fontSize: 20.sp),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DocumentPicker {
  final String name;
  final Widget asset;
  final VoidCallback onPressed;

  _DocumentPicker({
    @required this.name,
    this.asset,
    @required this.onPressed,
  });
}
