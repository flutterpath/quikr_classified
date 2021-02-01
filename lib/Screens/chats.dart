import 'package:flutter/material.dart';
import 'package:new_flutter/Widgets/drawerItems.dart';
import 'package:new_flutter/Widgets/dropDownItem_Body.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        child: DrawerItems(),
      ),

      appBar: AppBar(
         backgroundColor: Color(0xFFEA1F2E),

          elevation: 0,
          
          actions: <Widget>[

            CircleAvatar(
               backgroundColor: Colors.white,
                radius: 15,
              child: Image.asset('assets/images/IMG_20200505_164224.jpg',height: 21,),
              ),

            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'My Chats',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
                ),
              ),
            ),
            SizedBox(width: 235,)
          ]
      ),

      body: DropDownItemBody(
        'assets/images/IMG_20200508_193105.jpg',
       "Chat at your convenience", 
       'With Quikr NXT, all your past chats are available at glance. So you don\'t have to remember a thing, we\'ll do it for you',
        'Go to Home'
        ),
      
    );
  }
}