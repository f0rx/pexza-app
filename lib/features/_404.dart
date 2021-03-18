import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pexza/utils/utils.dart';

class UnknownRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text("Error",
            style:
                App.textTheme.headline6.copyWith(fontWeight: FontWeight.w600)),
        centerTitle: true,
        leading: Tooltip(
          message: "Back",
          child: IconButton(
            icon: Icon(Icons.keyboard_backspace),
            color: Colors.black,
            onPressed: () => navigator.pop(),
          ),
        ),
      ),
    );
  }
}
