import 'package:flutter/material.dart';
import 'package:new_flutter/Screens/notificationScreen.dart';
import 'package:new_flutter/Screens/searchBar.dart';
import 'package:new_flutter/Screens/selectCity.dart';
import 'package:new_flutter/Widgets/categories.dart';
import 'package:new_flutter/Widgets/drawerItems.dart';
import 'package:new_flutter/Widgets/iconsWithTitle.dart';
import 'package:new_flutter/Widgets/listTile_Icon_Title_SubTitle_trailing.dart';
import 'package:new_flutter/Widgets/offersScreen.dart';

class Mobiles extends StatefulWidget {
  @override
  _MobilesState createState() => _MobilesState();
}

class _MobilesState extends State<Mobiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       floatingActionButton: FloatingActionButton.extended(onPressed: () {  
            Navigator.push(  
            context,  
             MaterialPageRoute(builder: (context) => Categories(title: "Post Ad"), 
             )
            );  
             },
             icon: Icon(Icons.library_add),
              elevation: 20,
              backgroundColor: Color(0xFFEA1F2E), 
              label:Text(
                'POST AD',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              ),

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
                  child: Text('Select City',
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
            ),
//Drawer
            drawer: Drawer(
              child: DrawerItems()
            ),

//body

            body: ListView(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 1.0,
                      child: OffersScreen(image: "assets/images/offers.jpg")
                      ),
                      Divider(
                      thickness: 15,
                      color: Colors.grey[300],
                      ),
                    ListTileIconTitleSubtitleTrailing(
                      imageIcon: "assets/images/mobiles_icon.jpg",
                      title: 'Mobiles',
                      subTitle: 'Used Mobiles',
                      ),
                      Divider(color: Colors.black,),
                      ListTileIconTitleSubtitleTrailing(
                      imageIcon: "assets/images/mobiles_icon.jpg",
                      title: 'Tablets',
                      subTitle: 'Ipad,Samsung,Asus Zenpad, IBall',
                      ),
                      Divider(color: Colors.black,),
                      ListTileIconTitleSubtitleTrailing(
                      imageIcon: "assets/images/audio.jpg",
                      title: 'Accrssories',
                      subTitle: 'Cases and Covers,Memory Cards',
                      ),
                      Divider(color: Colors.black,),
                      ListTileIconTitleSubtitleTrailing(
                      imageIcon: "assets/images/home_appliances.jpg",
                      title: 'Wearables',
                      subTitle: 'Smart Watches,Fitness Bands,VRs',
                      ),
                      Divider(
                      thickness: 15,
                      color: Colors.grey[300],
                      ),
                      Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                      child: InkWell(
                        onTap: (){},
                           child: ListTile(

                           leading: Image.asset('assets/images/offer_icon.jpg'),
                           title: Text(
                             "Offers Zone",
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 15,
                             ),
                             ),
                             subtitle: Text(
                                "Avail offers & earn cashbacks and discounts",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                                ),
                               trailing: FlatButton(
                                  onPressed: (){}, 
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Color(0xFFEA1F2E),),
                                  ),
                                    child: Text(
                                      "View Offers",
                                      style: TextStyle(
                                      color: Color(0xFFEA1F2E),
                                      fontSize: 14
                              ),
                              )
                            ),

                            ),
                           ),
                        ),
                        Divider(
                        thickness: 15,
                        color: Colors.grey[300],
                        ),
                          Container(
                          height: 120,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Row(
                              children: <Widget>[
                                  Image.asset('assets/images/offer_icon.jpg'),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 10,),
                                    Text(
                                    "Quikr Bazaar",
                                      style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      ),
                                      ),
                                    Text(
                                    "Doorstep pick-up & delivery",
                                      style: TextStyle(
                                      fontSize: 12,
                                      ),
                                      ),
                                      Text(
                                    "Secure online payment",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                    ),
                                    SizedBox(height: 8,),
                                    Text(
                                    "Click to know more",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.green
                                      ),
                                      ),
                                    ],
                                ),
                                SizedBox(width: 100,),
                                VerticalDivider(color: Colors.grey,),
                                SizedBox(width: 20,),
                                Image.asset('assets/images/IMG_20200505_190013.jpg'),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 10,),
                                    Text(
                                    "Inter City",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                      ),
                                      Text(
                                    "Buy Mobiles from any seller in any city",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                    ),
                                    Text(
                                    "Doorstep pick-up & delivery across India",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                    ),
                                    SizedBox(height: 8,),
                                    Text(
                                    "Click to know more",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.green
                                      ),
                                      ),
                                  ],
                                  ),
                                SizedBox(width: 50,),
                              ],
                            ),
                            ]
                            ),
                        ),
                        Divider(
                          thickness: 15,
                          color: Colors.grey[300],
                          ),
                        Padding(
                           padding: const EdgeInsets.only(left: 10,top: 10),
                           child: Align(
                             alignment: Alignment.centerLeft,
                            child: Text(
                            'Popular Brands',
                            style: TextStyle(
                               color: Colors.black,
                               fontSize: 16,
                               fontWeight: FontWeight.bold
                             ),
                            ),
                           ),
                        ),
                        Container(
                           margin: EdgeInsets.only(left: 20),
                           height: 115,
                           child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[           
                            IconsWithTitle("Apple", 'assets/images/iphone.jpg', 65,price: '',width: 80,),
                            VerticalDivider(),
                            IconsWithTitle("Motorola", 'assets/images/moto.jpg', 65,price: '',width: 80,),
                            VerticalDivider(),
                            IconsWithTitle("Samsung", 'assets/images/samsung.jpg', 65,price: '',width: 80,),
                            VerticalDivider(),
                            IconsWithTitle("Micromax", 'assets/images/micromax.jpg', 65,price: '',width: 80,),
                            VerticalDivider(),
                            IconsWithTitle("Lenovo", 'assets/images/lenovo.jpg', 65,price: '',width: 80,),
                            VerticalDivider(),
                            IconsWithTitle("Xiaomi", 'assets/images/mi.jpg', 65,price: '',width: 80,),
                            VerticalDivider(),
                            IconsWithTitle("Karbonn", 'assets/images/karbonn.jpg', 65,price: '',width: 80,),
                            VerticalDivider(),
                            IconsWithTitle("Intex", 'assets/images/intex.jpg', 65,price: '',width: 80,),
                            VerticalDivider(),
                            IconsWithTitle("Sony", 'assets/images/sony.jpg', 65,price: '',width: 80,),
                            VerticalDivider(),
                            IconsWithTitle("LG", 'assets/images/LG.jpg', 65,price: '',width: 80,),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 15,
                          color: Colors.grey[300],
                          ),
                          Container(
                            height: 230,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/images/softColor.jpg'),fit: BoxFit.cover),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10,top: 20,left: 20),
                                  child: Text(
                                    'Choose By Features',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  height: 160,
                                  color: Colors.white,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[           
                                    IconsWithTitle("4G/LTE",'assets/images/IMG_20200603_175104.jpg',110,width: 120,price: '',),
                                    IconsWithTitle("Great Camera",'assets/images/IMG_20200603_175155.jpg',110,width: 120,price: '',),
                                    IconsWithTitle("High Performance",'assets/images/IMG_20200603_175221.jpg',110,width: 120,price: '',),
                                    IconsWithTitle("Longlife Battery",'assets/images/IMG_20200603_175306.jpg',110,width: 120,price: '',),
                                    ],
                                  ),
                                  ),
                              ],
                            ),
                          ),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.grey[300],
                          child: RichText(
                            text:TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: "Need Help? Call us at",style: TextStyle(fontSize: 12,color: Colors.black)),
                                TextSpan(text: " \'9997052132\' ",style: TextStyle(fontSize:12, color: Colors.green)),
                                TextSpan(text: " (9AM - 9PM)",style: TextStyle(fontSize: 12,color: Colors.black)),
                            ]
                           )
                         ),
                       ),
                  ],
                )
              ],
            ),
      
    );
  }
}