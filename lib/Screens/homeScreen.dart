import 'package:flutter/material.dart';
import 'package:new_flutter/Screens/Electronics.dart';
import 'package:new_flutter/Screens/assured.dart';
import 'package:new_flutter/Screens/furniture.dart';
import 'package:new_flutter/Screens/lifeStyle.dart';
import 'package:new_flutter/Screens/mobiles.dart';
import 'package:new_flutter/Screens/notificationScreen.dart';
import 'package:new_flutter/Screens/qCashScreen.dart';
import 'package:new_flutter/Screens/searchBar.dart';
import 'package:new_flutter/Screens/selectCity.dart';
import 'package:new_flutter/Screens/shortlistedAds.dart';
import 'package:new_flutter/Widgets/categories.dart';
import 'package:new_flutter/Widgets/drawerItems.dart';
import 'package:new_flutter/Widgets/iconsWithTitle.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(

//Post Ad, Floating action Button

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

//AppBar

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
                      MaterialPageRoute(builder: (context) => SelectCity(), ),
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
              padding: const EdgeInsets.only(right: 55),
              child: Icon(
                Icons.arrow_drop_down
              ),
            ),

            IconButton(
                icon: Icon(Icons.favorite_border), 
                onPressed: (){
                  Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context) => ShortlistedAds(), 
                       )
                    );
                }
                ),

            IconButton(
              icon: Icon(Icons.account_balance_wallet), 
              onPressed: (){
                     Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context) => QCashScreen(), 
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
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                 InkWell(
                   onTap: (){
                     Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context) => SearchBar(), 
                       )
                    );
                   },
                     child: Container(
                    height: 65,
                    color: Color(0xFFEA1F2E),
                    child: Card(
                      margin: EdgeInsets.all(5),
                      child: ListTile(
                        leading: Icon(Icons.search,color: Colors.black,),
                        title: Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.keyboard_voice),
                          color: Colors.black,
                           onPressed: (){}, 
                          )
                      ),
                    ),
                  ),
             ),

              SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Popular',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 95,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  
                  InkWell(
                    onTap: (){
                     Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context) => Assured(), 
                       )
                    );
                    },
                    child: IconsWithTitle("Homes",'assets/images/realEstate_icon.jpg',45,price: '',width: 70,)
                    ),
                  IconsWithTitle("Cars",'assets/images/cars_icon.jpg',45,price: '',width: 70,),
                  IconsWithTitle("Jobs",'assets/images/job_icon.jpg',45,price: '',width: 70,),
                  IconsWithTitle("Electronics",'assets/images/electronic_icon.jpg',45,price: '',width: 70,),
                  IconsWithTitle("Education",'assets/images/education_icon.jpg',45,price: '',width: 70,),
                  IconsWithTitle("Furniture",'assets/images/furniture_icon.jpg',45,price: '',width: 70,),
                  ],
                  ),
                  ),

                Divider(
                  thickness: 15,
                  color: Colors.grey[300],
                ),

                Expanded(
                  child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: GridView.count(
                    physics: ScrollPhysics(),
                    childAspectRatio:1,
                  crossAxisCount: 4,
                  children: <Widget>[
                  InkWell(
                    onTap: (){
                      Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context) => Furniture(), 
                       )
                    );
                    },
                    child: IconsWithTitle("Furniture",'assets/images/furniture_icon.jpg',45,price: '',width: 70,)
                    ),

                    InkWell(
                      onTap: (){
                      Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context) => Mobiles(), 
                       )
                      );
                      },
                      child: IconsWithTitle("Mobiles",'assets/images/mobiles_icon.jpg',45,price: '',width: 70,),
                      ),

                    InkWell(
                    onTap: (){
                      Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context) => Assured(), 
                       )
                    );
                    },
                    child: IconsWithTitle("Quikr Assured",'assets/images/realEstate_icon.jpg',45,price: '',width: 70,)),

                    InkWell(
                      onTap: (){
                      Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context) => LifeStyle(), 
                       )
                    );
                    },
                      child: IconsWithTitle("LifeStyle",'assets/images/lifeStyle_icon.jpg',45,price: '',width: 70,)
                    ),

                    IconsWithTitle("Jobs",'assets/images/job_icon.jpg',45,price: '',width: 70,),

                    InkWell(
                      onTap: (){
                      Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context) => Electronics(), 
                       )
                    );
                    },
                      child: IconsWithTitle("Electronics",'assets/images/electronic_icon.jpg',45,price: '',width: 70,)
                    ),

                    IconsWithTitle("Services",'assets/images/services_icon.jpg',45,price: '',width: 70,),

                    IconsWithTitle("Pets",'assets/images/pets_icon.jpg',45,price: '',width: 70,),

                    IconsWithTitle("Community",'assets/images/community_icon.jpg',45,price: '',width: 70,),

                    IconsWithTitle("Events",'assets/images/events_icon.jpg',45,price: '',width: 70,),

                    IconsWithTitle("Matrimonial",'assets/images/matrimonial_icon.jpg',45,price: '',width: 70,),

                    IconsWithTitle("Cars",'assets/images/cars_icon.jpg',45,price: '',width: 70,),

                    IconsWithTitle("Jobs",'assets/images/job_icon.jpg',45,price: '',width: 70,),

                    IconsWithTitle("Electronics",'assets/images/electronic_icon.jpg',45,price: '',width: 70,),

                    IconsWithTitle("Education",'assets/images/education_icon.jpg',45,price: '',width: 70,),

                    IconsWithTitle("More",'assets/images/more_icon.jpg',45,price: '',width: 70,),

            

                      ],
                   ),
                  ),
                 ),
                  Divider(
                    thickness: 15,
                    color: Colors.grey,
                  ),

                  Container(
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 10,top: 10,bottom: 5),
                             child: Text(
                              'Earn QCash',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                          ),
                           ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,bottom: 5),
                              child: Text(
                              'Use QCash while buying at Quikr',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black87
                              ),
                          ),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Material(
                            color: const Color(0xFFEBF8FF),
                           child: InkWell(
                             onTap: (){},
                                child: ListTile(

                                leading: Image.asset('assets/images/IMG_20200511_203308.jpg'),
                                title: Text(
                                  "Register & Earn",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  ),
                                  subtitle: RichText(
                                    text:TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(text: "Get",style: TextStyle(fontSize: 12,color: Colors.black)),
                                        TextSpan(text: " \$500 QCash ",style: TextStyle(fontSize:12, color: Colors.green)),
                                        TextSpan(text: "for signing up to Quikr",style: TextStyle(fontSize: 12,color: Colors.black)),
                                      ]
                                    )
                                    ),
                                    trailing: CircleAvatar(
                                      radius: 15,
                                      backgroundColor: const Color(0xFF017EBE),
                                      child: Icon(Icons.arrow_forward,color: Colors.white,),
                                    ),

                              ),
                           ),
                          ),
                        ),

                      ],
                    ),
                  )

            ],
          ),
        
      ),
    );
  }
}