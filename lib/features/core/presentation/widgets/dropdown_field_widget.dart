import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/utils/utils.dart';

class DropdownFieldWidget<Model> extends StatelessWidget {
  final double radius;
  final List<DropdownMenuItem<Model>> items;
  final String hint;
  final String disabledHint;
  final Model selected;
  final bool validate;
  final String error;
  final double iconSize;
  final void Function(Model) onChanged;

  const DropdownFieldWidget({
    Key key,
    this.radius = 8.0,
    @required this.items,
    this.hint = "-- Choose --",
    this.disabledHint = "-- Invalid selection --",
    @required this.selected,
    this.validate = false,
    this.error = '',
    this.iconSize = 19.0,
    @required this.onChanged,
  }) : super(key: key);

  bool get _showErrors => validate == true && !error.isNullOrBlank;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(
              color: _showErrors ? AppColors.errorRed : Colors.grey,
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: ButtonTheme(
              alignedDropdown: true,
              layoutBehavior: ButtonBarLayoutBehavior.constrained,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              child: DropdownButton<Model>(
                items: items,
                disabledHint: AutoSizeText(
                  disabledHint,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
                hint: AutoSizeText(
                  hint,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
                value: selected,
                isExpanded: true,
                icon: Icon(Icons.keyboard_arrow_down),
                iconSize: iconSize,
                onChanged: onChanged,
              ),
            ),
          ),
        ),
        //
        Visibility(
          visible: _showErrors,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 12.0),
            child: AutoSizeText(
              error ?? '',
              style: TextStyle(
                fontSize: 12.0,
                color: AppColors.errorRed,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
