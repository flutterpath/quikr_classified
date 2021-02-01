import 'package:flutter/material.dart';
import 'package:new_flutter/Widgets/dropDownItem_Body.dart';

class ShortlistedAds extends StatefulWidget {
  @override
  _ShortlistedAdsState createState() => _ShortlistedAdsState();
}

class _ShortlistedAdsState extends State<ShortlistedAds> {
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
          'Shortlisted Ads',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
      ),

      body: DropDownItemBody(
        'assets/images/IMG_20200508_193039.jpg',
       "OMG! Your shortlist is empty", 
       'Add items to your wish list by going through our awesome range of products',
        'Go to Home'
        ),
      
    );
  }
}