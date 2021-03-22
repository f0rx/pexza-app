import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SubtitledHeader extends StatelessWidget {
  final String text;
  final TextStyle style;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final int maxLines;
  final bool softWrap;
  final bool wrapWords;
  final TextAlign textAlign;

  const SubtitledHeader({
    Key key,
    this.text,
    this.style,
    this.fontSize = 17.0,
    this.color,
    this.fontWeight = FontWeight.bold,
    this.maxLines,
    this.softWrap = false,
    this.wrapWords = false,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: style ??
          TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color ?? Colors.grey.shade600,
          ),
      maxLines: maxLines,
      softWrap: softWrap,
      wrapWords: wrapWords,
      textAlign: textAlign,
    );
  }
}
