import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';

class GenderField extends StatelessWidget {
  final FocusNode focus;
  final FocusNode next;

  const GenderField({
    Key key,
    @required this.focus,
    this.next,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return DropdownButtonHideUnderline(
          child: ButtonTheme(
            alignedDropdown: true,
            layoutBehavior: ButtonBarLayoutBehavior.constrained,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            child: DropdownButton<GenderType>(
              items: GenderType.items
                  .toList()
                  .map<DropdownMenuItem<GenderType>>(
                    (item) => DropdownMenuItem<GenderType>(
                      value: item,
                      child: Text(
                        item.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                    ),
                  )
                  .toList(),
              hint: Text("-- Select Gender --"),
              value: context
                  .watch<AuthCubit>()
                  .state
                  .gender
                  .value
                  .getOrElse(() => GenderType.Male),
              isExpanded: false,
              icon: Icon(Icons.keyboard_arrow_down),
              iconSize: 19.0,
              onChanged: context.read<AuthCubit>().genderChanged,
            ),
          ),
        );
      },
    );
  }
}
