import 'package:flutter/material.dart';

class DropDownItemBody extends StatelessWidget {

  final String image;
  final String title;
  final String subtitle;
  final String btnTxt;

  DropDownItemBody(this.image,this.title,this.subtitle,this.btnTxt);

  @override
  Widget build(BuildContext context) {
    return Center(
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
                fontSize: 14
              ),
              ),
              SizedBox(height: 20,),
            ButtonTheme(
              height: 50,
              child: FlatButton(
               onPressed: (){}, 
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(0),
                 side: BorderSide(color: Color(0xFFEA1F2E),),
               ),
                child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Text(
               btnTxt,
               style: TextStyle(
               color: Color(0xFFEA1F2E),
               fontSize: 16
               ),
                  ),
                )
                ),
            )
          ],
        ),
        
      ),
    );
  }
}