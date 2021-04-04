import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/utils/boxes.dart';
import 'package:pexza/utils/utils.dart';

part 'role_state.dart';
part 'role_cubit.freezed.dart';

@injectable
class RoleCubit extends Cubit<RoleState> {
  RoleCubit() : super(RoleState.initial());

  void onChanged(Role role) {
    final _roleBox = App.box(Keys.APP_BOX);

    _roleBox.put(Keys.HIVE_ROLE_KEY, role.name);

    emit(state.copyWith(role: role));
  }

  Role get role {
    final _roleBox = App.box(Keys.APP_BOX);

    final data = _roleBox.get(Keys.HIVE_ROLE_KEY) as String;

    final role = Role.valueOf(data);

    emit(state.copyWith(role: role));

    return role;
  }
}
