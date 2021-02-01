import 'package:flutter/material.dart';
import 'package:new_flutter/Screens/contactUs.dart';
import 'package:new_flutter/Screens/messages_Drawer.dart';
import 'package:new_flutter/Screens/myAds_Drawer.dart';
import 'package:new_flutter/Screens/orders&payments.dart';
import 'package:new_flutter/Screens/qCashScreen.dart';
import 'package:new_flutter/Screens/selectCity.dart';
import 'package:new_flutter/Screens/settings.dart';

class DrawerItems extends StatefulWidget {
  @override
  _DrawerItemsState createState() => _DrawerItemsState();
}

class _DrawerItemsState extends State<DrawerItems> {

  coustomListTile(String image,String title){

return ListTile(
  leading: Image.asset(image,height: 35,),
  title: Text(title),
);

}
  @override
  Widget build(BuildContext context) {
    return ListView(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Colors.pink,
                          Color(0xFFEA1F2E),
                          ]
                        )
                      ),
                child: InkWell(
                  onTap: (){},
                     child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                        radius: 30,
                      child: Image.asset('assets/images/IMG_20200522_151950.jpg',height: 30,),
                      ),
                      title: Text(
                        'Login/SignUp',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                        ),
                        subtitle: Text(
                          'My Account',
                          style: TextStyle(
                          color: Colors.white,
                        ),
                        ),
                        trailing: Icon(Icons.navigate_next,color: Colors.white,),
                  ),
                ),
              ),
              SizedBox(height: 5),
              coustomListTile('assets/images/home_icon.jpg','Home'),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context)=>OrdersPayments()
                      )
                      );
                },
              child:coustomListTile('assets/images/oredrs&payments_icon.jpg','Orders & Payments'),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context)=>MyAdsDrawer()
                      )
                      );
                },
                 child: ListTile(
                leading: Image.asset('assets/images/IMG_20200505_185817.jpg',height: 35,),
                title: Text('My Ads'),
                subtitle: Text('Ads Posted by you'),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context)=>MessagesDrawer()
                          )
                          );
                },
                  child: ListTile(
                  leading: Image.asset('assets/images/IMG_20200505_185842.jpg',height: 35,),
                  title: Text('Messages & Notifications'),
                  subtitle: Text('Chats, Alerts, Notifications, Etc',
                  overflow: TextOverflow.ellipsis,),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context)=> QCashScreen()
                          )
                          );
                },
              child : coustomListTile('assets/images/IMG_20200505_185906.jpg', 'QCash'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Others',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              coustomListTile("assets/images/IMG_20200505_185927.jpg", 'For Businesses'),
              coustomListTile("assets/images/IMG_20200505_185950.jpg", 'Rate us on Playstore'),
              InkWell(
                onTap: (){
                   Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context)=>SelectCity()
                      )
                      );
                },
                 child: ListTile(
                  leading: Image.asset('assets/images/IMG_20200505_190013.jpg',height: 35,),
                  title: Text('Location'),
                  trailing: Text('Ahmedabad',style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context)=>Settings()
                      )
                      );
                },
              child:coustomListTile("assets/images/IMG_20200505_190032.jpg", 'App Settings'),
              ),
              coustomListTile("assets/images/IMG_20200505_190055.jpg", 'Privacy Policy'),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context)=>ContactUs()
                      )
                      );
                },
              child:coustomListTile("assets/images/IMG_20200505_190117.jpg", 'Contact us'),
              ),
              Container(
                height: 50,
                color: Colors.grey[300],
                child: Center(
                  child: Image.asset('assets/images/IMG_20200501_144943.jpg'),
                ),
              )
            ],
          );
  }
}