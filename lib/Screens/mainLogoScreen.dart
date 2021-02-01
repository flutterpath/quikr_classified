import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_flutter/Screens/homeScreen.dart';

class MainLogoScreen extends StatefulWidget {

  @override
  _MainLogoScreenState createState() => _MainLogoScreenState();
}

class _MainLogoScreenState extends State<MainLogoScreen> {
   startTime() async {
    var _duration = new Duration(seconds: 1);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen()
            )
          );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFFCB045),
            Color(0xFFFD1D1D),
            Color(0xFF833AB4)
            ]
          )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 70,right: 70),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: Colors.white
            ),
          ),
                  child: CircleAvatar(
            radius: 120,
            backgroundColor: Colors.transparent,
            child: CircleAvatar(
            radius: 116,
            backgroundColor: Colors.white,
            child: Image.asset('assets/images/full_name.jpg',height: 120,),
          ),
          ),
        ),
      ),
      );
  }
}