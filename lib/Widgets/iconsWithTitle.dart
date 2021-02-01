import 'package:flutter/material.dart';

class IconsWithTitle extends StatelessWidget {
  final String title;
  final String imagePath;
  final double height;
  final double width;
  final String price;

  IconsWithTitle(this.title,this.imagePath, this.height, {this.price, this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
            width: width,
            child: Column(
              children: <Widget>[
                Image.asset(imagePath,fit: BoxFit.cover,height: height),
                SizedBox(height: 8,),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 13
                  ),
                ),
                SizedBox(height: 8,),
                Text(
                  price,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.green,
                  ),
                )
              ],
            ),
          );
  }
}