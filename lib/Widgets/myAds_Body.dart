import 'package:flutter/material.dart';
import 'package:new_flutter/Widgets/categories.dart';

class MyAdsBody extends StatelessWidget {

  final String image;
  final String title;
  final String subtitle;
  final String btnTxt;

  MyAdsBody(this.image,this.title,this.subtitle,this.btnTxt);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 220,),
              Image.asset(image,height: 180,),
              SizedBox(height: 20,),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(height: 10,),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ),
                ),
                SizedBox(height: 20,),
              ButtonTheme(
                height: 50,
                  child: FlatButton(
                 onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => Categories(title: "Post Ad"), ),
                      );
                 }, 
                 color: Color(0xFFEA1F2E),
                  child: Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Text(
                 btnTxt,
                 style: TextStyle(
                   color: Colors.white,
                 fontSize: 16
                 ),
                    ),
                  )
                  ),
              )
            ],
          ),
          
        ),
      ),
    );
  }
}