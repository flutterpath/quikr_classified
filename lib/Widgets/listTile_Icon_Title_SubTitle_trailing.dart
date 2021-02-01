import 'package:flutter/material.dart';

class ListTileIconTitleSubtitleTrailing extends StatelessWidget {

  final String imageIcon;
  final String title;
  final String subTitle;
  final int trailingIconCode;

  const ListTileIconTitleSubtitleTrailing({Key key, this.imageIcon, this.title, this.subTitle, this.trailingIconCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      
      leading: Image.asset(imageIcon),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(
          fontSize: 12
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios,size: 18,),

    );
  }
}