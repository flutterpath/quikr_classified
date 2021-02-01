import 'package:flutter/material.dart';

class TextFieldForSearch extends StatelessWidget {

  final String hintTxt;

  const TextFieldForSearch({this.hintTxt});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.white,
        fontSize: 20
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintTxt,
        hintStyle: TextStyle(
          color: Colors.white70,
          fontSize: 18
        )
        ),
        cursorColor: Colors.white,
    );
  }
}