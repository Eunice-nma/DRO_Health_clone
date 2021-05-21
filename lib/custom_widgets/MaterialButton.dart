import 'package:flutter/material.dart';
import '../constants.dart';


class CustomMaterialButton extends StatelessWidget {

  final Function onPressed;
  final Widget child;

  CustomMaterialButton({this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      constraints: BoxConstraints(
        maxWidth: 300.0,
      ),
      fillColor: kPurple,
      onPressed: onPressed,
      child: child,
    );
  }
}
