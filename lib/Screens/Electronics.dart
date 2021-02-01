import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:new_flutter/Screens/notificationScreen.dart';
import 'package:new_flutter/Screens/searchBar.dart';
import 'package:new_flutter/Screens/selectCity.dart';
import 'package:new_flutter/Widgets/categories.dart';
import 'package:new_flutter/Widgets/drawerItems.dart';
import 'package:new_flutter/Widgets/iconsWithTitle.dart';
import 'package:new_flutter/Widgets/offersScreen.dart';

class Electronics extends StatefulWidget {
  @override
  _ElectronicsState createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
  static const data=<String>[
    "All Furnitures",
    'Home Decor'
  ];
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

            body: ListView(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 1.0,
                      child: OffersScreen(image: "assets/images/electronic_offer.jpg")
                      ),
                      Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Popular Products',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.green
                        ),
                      ),
                    ],
                  ),
                ),
                  Container(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[           
                      IconsWithTitle("Bed Sets",'assets/images/bed_sets.jpg',110,width: 120,price: '',),
                      IconsWithTitle("Sofa Sets",'assets/images/sofa.jpg',110,width: 120,price: '',),
                      IconsWithTitle("Bed Sets",'assets/images/bed_sets.jpg',110,width: 120,price: '',),
                      IconsWithTitle("Sofa Sets",'assets/images/sofa.jpg',110,width: 120,price: '',),
                      ],
                    ),
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
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                    'All Categories',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),
                                   ),
                                  ),
                                ),
                                ExpansionTile(
                                  leading: Image.asset('assets/images/home_appliances.jpg',height: 45,),
                                  title: Text(
                                    'Home Appliances',
                                  ),
                                  children: <Widget>[
                                    ListTile(title: Text('Refrigerators',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Washing Machine',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Air Conditioners',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Air Coolers',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Water Heater/Geysers',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Ceiling Fans',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('More [+]',style: TextStyle(fontSize: 14,color: Colors.green),),),
                                  ],
                                  ),
                                  ExpansionTile(
                                  leading: Image.asset('assets/images/kitchen_appliances.jpg',height: 45,),
                                  title: Text(
                                    'Kitchen Appliances',
                                  ),
                                  children: <Widget>[
                                    ListTile(title: Text('Water Purifiers',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Microwave Ovens',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Mixer/Grinder/Juicer',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Dish Washer',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Electric Cooker',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Music & Movies',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('More [+]',style: TextStyle(fontSize: 14,color: Colors.green),),),
                                  ],
                                  ),
                                  ExpansionTile(
                                  leading: Image.asset('assets/images/computers.jpg',height: 45,),
                                  title: Text(
                                    'Computers & Accesories',
                                  ),
                                  children: <Widget>[
                                    ListTile(title: Text('Laptop',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Desktop',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Printers',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Routers',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Monitor',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('CPU',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('More [+]',style: TextStyle(fontSize: 14,color: Colors.green),),),
                                  ],
                                  ),
                                  ExpansionTile(
                                  leading: Image.asset('assets/images/audio.jpg',height: 45,),
                                  title: Text(
                                    'Audio,Video & Gaming',
                                  ),
                                  children: <Widget>[
                                    ListTile(title: Text('Fitness & Sports Equipments',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Books & Hobbies',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Music Instruments',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Collectibles',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Coins & Stamps',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Music & Movies',style: TextStyle(fontSize: 14),),),
                                  ],
                                  ),
                                  ExpansionTile(
                                  leading: Image.asset('assets/images/camera_icon.jpg',height: 45,),
                                  title: Text(
                                    'Camera Accessories',
                                  ),
                                  children: <Widget>[
                                    ListTile(title: Text('Fitness & Sports Equipments',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Books & Hobbies',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Music Instruments',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Collectibles',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Coins & Stamps',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Music & Movies',style: TextStyle(fontSize: 14),),),
                                  ],
                                  ),
                                  ExpansionTile(
                                  leading: Image.asset('assets/images/others_icon.jpg',height: 45,),
                                  title: Text(
                                    'Other Devices',
                                  ),
                                  children: <Widget>[
                                    ListTile(title: Text('Fitness & Sports Equipments',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Books & Hobbies',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Music Instruments',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Collectibles',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Coins & Stamps',style: TextStyle(fontSize: 14),),),
                                    ListTile(title: Text('Music & Movies',style: TextStyle(fontSize: 14),),),
                                  ],
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
                                    'Recently Viewed',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),
                                   ),
                                  ),
                                ),
                                Container(
                                  height: 180,
                                  child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[           
                                  IconsWithTitle("Bed Sets",'assets/images/bed_sets.jpg',110,width: 120,price: '\$19999',),
                                  IconsWithTitle("Sofa Sets",'assets/images/sofa.jpg',110,width: 120,price: '\$19999',),
                                  IconsWithTitle("Bed Sets",'assets/images/bed_sets.jpg',110,width: 120,price: '\$19999',),
                                  IconsWithTitle("Sofa Sets",'assets/images/sofa.jpg',110,width: 120,price: '\$19999',),
                                  ],
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
                                    'Testimonials',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),
                                   ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  height: 165,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            width: MediaQuery.of(context).size.width*0.6,
                                            child: Column(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    CircleAvatar(
                                                      backgroundColor: Colors.grey[200],
                                                      radius: 30,
                                                      child: Text('S',style: TextStyle(fontSize: 40,color: Colors.black),),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(5.0),
                                                      child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: <Widget>[
                                                          SizedBox(height: 10,),
                                                          Text(
                                                          "Suresh Rao",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                          ),
                                                          ),
                                                          Text(
                                                          "Gurgaon",
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                          ),
                                                          ),
                                                          Row(
                                                            children: <Widget>[
                                                              Icon(Icons.star,color: Colors.yellow,),
                                                              Text(
                                                              "4/5",
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                              ),
                                                              ),
                                                            ],
                                                           )
                                                          ],
                                                        ),
                                                    ),
                                                  ],
                                                ),
                                                Divider(),
                                                Text(
                                                  'This process of delivery was very efficient. It Solved my problem to buy stuff for ny new appartment',
                                                textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          VerticalDivider(width: 2,thickness: 1,),
                                          SizedBox(width: 15,),
                                          Container(
                                            width: MediaQuery.of(context).size.width*0.6,
                                            child: Column(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    CircleAvatar(
                                                      backgroundColor: Colors.grey[200],
                                                      radius: 30,
                                                      child: Text('A',style: TextStyle(fontSize: 40,color: Colors.black),),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(5.0),
                                                      child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: <Widget>[
                                                          SizedBox(height: 10,),
                                                          Text(
                                                          "Anil Pradhan",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                          ),
                                                          ),
                                                          Text(
                                                          "Gurgaon",
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                          ),
                                                          ),
                                                          Row(
                                                            children: <Widget>[
                                                              Icon(Icons.star,color: Colors.yellow,),
                                                              Text(
                                                              "4/5",
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                              ),
                                                              ),
                                                            ],
                                                           )
                                                          ],
                                                        ),
                                                    ),
                                                  ],
                                                ),
                                                Divider(),
                                                Text(
                                                  'This process of delivery was very efficient. It Solved my problem to buy stuff for ny new appartment',
                                                textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  height: 100,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.grey[200],
                                  child: RichText(
                                    text:TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(text: "Need Help? Call us at",style: TextStyle(fontSize: 12,color: Colors.black)),
                                        TextSpan(text: " \'9997052132\' ",style: TextStyle(fontSize:12, color: Colors.green)),
                                        TextSpan(text: " (9AM - 9PM)",style: TextStyle(fontSize: 12,color: Colors.black)),
                                      ]
                                      )
                                      ),
                                )
                                
                 ],
                )
              ],
            ),
      
    );
  }
}