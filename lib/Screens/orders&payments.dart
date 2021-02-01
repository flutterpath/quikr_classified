import 'package:flutter/material.dart';
import 'package:new_flutter/Widgets/dropDownItem_Body.dart';

class OrdersPayments extends StatefulWidget {
  @override
  _OrdersPaymentsState createState() => _OrdersPaymentsState();
}

class _OrdersPaymentsState extends State<OrdersPayments> {
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
          'Orders & Payments',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
      ),

      body: DropDownItemBody(
        'assets/images/IMG_20200519_203157.jpg',
       "You don\'t have any orders & payments", 
       'Explore our wide range of products and services',
        'Explore Now'
        ),
      
    );
  }
}