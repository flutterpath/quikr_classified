import 'package:flutter/material.dart';
import 'package:new_flutter/Screens/notificationScreen.dart';
import 'package:new_flutter/Screens/searchBar.dart';
import 'package:new_flutter/Screens/selectCity.dart';
import 'package:new_flutter/Widgets/carsTabBody.dart';
import 'package:new_flutter/Widgets/categories.dart';
import 'package:new_flutter/Widgets/drawerItems.dart';

class Cars extends StatefulWidget {
  @override
  _CarsState createState() => _CarsState();
}

class _CarsState extends State<Cars> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
          child: Scaffold(

        appBar: AppBar(
          backgroundColor: Color(0xFFEA1F2E),

            elevation: 0,
          
            actions: <Widget>[

            CircleAvatar(
               backgroundColor: Colors.white,
                radius: 15,
              child: Image.asset('assets/images/logo.jpg',height: 21,),
              ),

            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => SelectCity(), 
                      ),
                    );
                  },
                  child: Text(
                  'Select City',
                  style: TextStyle(
                    fontSize: 19
                  ),
                  ),
                   ),
                 ),
               ),

            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Icon(
                Icons.arrow_drop_down
              ),
            ),

            IconButton(
              icon: Icon(Icons.search), 
              onPressed: (){
                     Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context) => SearchBar(), 
                       )
                    );
                   },
              ),
              IconButton(
              icon: Icon(Icons.notification_important), 
              onPressed: (){
                Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context) => NotificationScreen(), 
                       )
                    );
              }
              ),
              
                  
              ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'NEW CARS',
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'USED CARS',
                  style: TextStyle(
                      fontSize: 16
                    ),
                ),
              )
            ]
          ),
        ),

        drawer: Drawer(
              child: DrawerItems()
            ),

        body: TabBarView(
          children: [
            CarsTabBody(),
            CarsTabBody()
          ] 
        ),
        
      ),
    );
  }
}