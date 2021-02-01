import 'package:flutter/material.dart';

class IconsWithTitle2 extends StatelessWidget {
  final String title;
  final String imagePath;
  final double height;
  final double width;
  final String price;

  IconsWithTitle2(this.title,this.imagePath, this.height, {this.price, this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
            width: width,
            child: Row(
              children: <Widget>[
                Image.asset(imagePath,fit: BoxFit.cover,height: height),
                Expanded(
                                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 13
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      }