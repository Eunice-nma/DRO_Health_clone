import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final Function onPress;
  final Function onChanged;
  final TextEditingController textEditingController;

  SearchField({this.onPress, this.onChanged, this.textEditingController});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        controller: textEditingController,
        onChanged: onChanged,
        cursorColor: Colors.grey[800],
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey[800],
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.grey[800],
            ),
            onPressed: onPress,
          ),
          hintText: 'Search Here',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[700]),
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[900]),
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
          ),
        ),
      ),
    );
  }
}
