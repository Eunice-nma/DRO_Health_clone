import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  CircleIcon({this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: IconButton(
          icon: Icon(icon),
          onPressed: onPress,
        ),
      ),
    );
  }
}
