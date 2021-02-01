import 'package:flutter/material.dart';
import 'package:new_flutter/Screens/chats.dart';
import 'package:new_flutter/Screens/pendingActivities.dart';
import 'package:new_flutter/Screens/pendingPayments.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {

    Widget notificationCard(String image,String title,String subtitle){

      return Card(
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10,),
            Image.asset(image,height: 90,),
            SizedBox(height: 10,),
            Text(
               title,
               textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFEA1F2E),
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10,),
            Text(
               subtitle,
               textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      );

    }

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Color(0xFFEA1F2E),),
         onPressed: (){
           Navigator.pop(context);
         }
         ),
        title: Text(
          'All Notifications',
          style: TextStyle(
            fontSize: 19,
            color: Color(0xFFEA1F2E),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

    body:     Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                  Expanded(
                    child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: GridView(
                      semanticChildCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    children: <Widget>[
                      InkWell(
                   onTap: (){
                     Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context) => Chats(), 
                       )
                    );
                   },
                    child:  notificationCard("assets/images/chatting.jpeg", 'Chats', 'Make a deal by using chatting'),
                    ),
                       notificationCard("assets/images/notification.jpeg", 'Notifications', 'Catch your notification and grab some deals'),
                       InkWell(
                   onTap: (){
                     Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context) => PendingPayments(), 
                       )
                    );
                   },
                     child: notificationCard("assets/images/payment.png", 'Pending Payments', 'Complete your panding payments and get QCash in your wallet'),
                      ),
                      InkWell(
                   onTap: (){
                     Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context) => PendingActivities(), 
                       )
                    );
                   },
                     child:  notificationCard("assets/images/IMG_20200522_212847.jpg", 'Pending Activities', 'Complete your panding Activities'),
                     ),
                    ],
                     ),
                    ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 185),
                     child: Container(
                       width: MediaQuery.of(context).size.width,
                       height: 180,
                       child: notificationCard("assets/images/2020-05-22-23-27-58-805.png", 'Offers Made', 'Offers recived and made on ads'),
                     ),
                   )
                   
               ]
    ) 
    );
  }
}