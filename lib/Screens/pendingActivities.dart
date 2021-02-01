import 'package:flutter/material.dart';
import 'package:new_flutter/Widgets/dropDownItem_Body.dart';

class PendingActivities extends StatefulWidget {
  @override
  _PendingActivitiesState createState() => _PendingActivitiesState();
}

class _PendingActivitiesState extends State<PendingActivities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFFEA1F2E),
        leading: IconButton(
          icon: Icon(Icons.arrow_back), 
          onPressed: (){
            Navigator.pop(context);
          }
        ),
        title: Text(
          'Panding Activities',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
      ),

      body: DropDownItemBody(
        'assets/images/IMG_20200508_193132.jpg',
       "You don\'t have any pending activities", 
       'Emplore our wide range of products & services',
        'Explore Now'
        ),
      
    );
  }
}