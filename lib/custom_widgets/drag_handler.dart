import 'package:flutter/material.dart';


Widget dragHandler() {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      width: 45,
      height: 5,
    ),
  );
}