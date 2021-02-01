import 'package:flutter/material.dart';
import 'package:new_flutter/Widgets/myAds_Body.dart';

class MyAdsDrawer extends StatefulWidget {
  @override
  _MyAdsDrawerState createState() => _MyAdsDrawerState();
}

class _MyAdsDrawerState extends State<MyAdsDrawer> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
          child: Scaffold(

        appBar: AppBar(
          backgroundColor: Color(0xFFEA1F2E),
          leading: IconButton(icon:Icon(Icons.arrow_back), onPressed: () {Navigator.pop(context);},),
          title: Text(
            "My Ads",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  'ACTIVE ADS',
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  'INACTIVE ADS',
                  style: TextStyle(
                      fontSize: 16
                    ),
                ),
              )
            ]
          ),
        ),

        body: TabBarView(
          children: [
            MyAdsBody('assets/images/IMG_20200514_162109.jpg', 'No Active Ads Yet', 'At Quikr, you can buy,sell or rent anything you can think of', 'Post Ad'),
            MyAdsBody('assets/images/IMG_20200514_162109.jpg', 'No Inactive Ads Yet', 'At Quikr, you can buy,sell or rent anything you can think of', 'Post Ad')
          ] 
        ),
        
      ),
    );
  }
}