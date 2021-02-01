import 'package:flutter/material.dart';
import 'package:new_flutter/Widgets/dropDownItem_Body.dart';

class PendingPayments extends StatefulWidget {
  @override
  _PendingPaymentsState createState() => _PendingPaymentsState();
}

class _PendingPaymentsState extends State<PendingPayments> {
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
          'Panding Payments',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
      ),

      body: DropDownItemBody(
        'assets/images/IMG_20200508_193149.jpg',
       "You don\'t have any pending payments", 
       'Emplore our wide range of products & services',
        'Explore Now'
        ),
      
    );
  }
}