import 'package:flutter/material.dart';
import 'package:new_flutter/Screens/Electronics.dart';
import 'package:new_flutter/Screens/assured.dart';
import 'package:new_flutter/Screens/cars.dart';
import 'package:new_flutter/Screens/contactUs.dart';
import 'package:new_flutter/Screens/furniture.dart';
import 'package:new_flutter/Screens/homeScreen.dart';
import 'package:new_flutter/Screens/lifeStyle.dart';
import 'package:new_flutter/Screens/mainLogoScreen.dart';
import 'package:new_flutter/Screens/messages_Drawer.dart';
import 'package:new_flutter/Screens/mobiles.dart';
import 'package:new_flutter/Screens/myAds_Drawer.dart';
import 'package:new_flutter/Screens/notificationScreen.dart';
import 'package:new_flutter/Screens/postAdDetailScreen.dart';
import 'package:new_flutter/Screens/postAdSuccessScreen.dart';
import 'package:new_flutter/Screens/qCashScreen.dart';
import 'package:new_flutter/Screens/searchBar.dart';
import 'package:new_flutter/Screens/selectCity.dart';
import 'package:new_flutter/Screens/settings.dart';
import 'package:new_flutter/Screens/splashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override 
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quikr Dummy',
      home: MainLogoScreen(),
    );
  }
}

