import 'package:flutter/material.dart';

class CustomExpantionTile extends StatelessWidget {
  final String image;
  final String title;

  const CustomExpantionTile({Key key, this.image, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Image.asset(image),
      title: Text(
        title,
      ),
      children: <Widget>[
        Text(
        title,
        ),
      ],
    );
  }
}