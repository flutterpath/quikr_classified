import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:new_flutter/Screens/notificationScreen.dart';
import 'package:new_flutter/Screens/searchBar.dart';
import 'package:new_flutter/Screens/selectCity.dart';
import 'package:new_flutter/Widgets/categories.dart';
import 'package:new_flutter/Widgets/drawerItems.dart';
import 'package:new_flutter/Widgets/IconsWithTitle2.dart';
import 'package:new_flutter/Widgets/iconsWithTitle.dart';
import 'package:new_flutter/Widgets/offersScreen.dart';

class Furniture extends StatefulWidget {
  @override
  _FurnitureState createState() => _FurnitureState();
}

class _FurnitureState extends State<Furniture> {

  @override
  Widget build(BuildContext context) {
    final w=MediaQuery.of(context).size.width/2;
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
//Body
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
                    Padding(
                     padding: const EdgeInsets.only(left: 10,top: 10),
                    child: Align(
                       alignment: Alignment.centerLeft,
                      child: Text(
                      'All Furniture & Decor items',
                       style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                         fontWeight: FontWeight.bold
                       ),
                      ),
                     ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                        IconsWithTitle2("All Furniture", 'assets/images/home_appliances.jpg', 65,width: w,),
                        IconsWithTitle2("Mattresses", 'assets/images/computers.jpg', 65,width: w,),
                        IconsWithTitle2("Home Decor", 'assets/images/audio.jpg', 65,width: w,),
                        IconsWithTitle2("Home & Office Tables", 'assets/images/kitchen_appliances.jpg', 65,width: w,),
                        IconsWithTitle2("Dining Sets", 'assets/images/camera_icon.jpg', 65,width: w,),
                        IconsWithTitle2("Bar Furniture", 'assets/images/home_appliances.jpg', 65,width: w,),
                        IconsWithTitle2("TV Stands", 'assets/images/audio.jpg', 65,width: w,),
                        IconsWithTitle2("Shoe Rack", 'assets/images/computers.jpg', 65,width: w,),
                        IconsWithTitle2("Cradles & Cots", 'assets/images/computers.jpg', 65,width: w,),
                        IconsWithTitle2("Prams,Walkers & Strollers", 'assets/images/kitchen_appliances.jpg', 65,width: w,),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        IconsWithTitle2("Bed Sets", 'assets/images/kitchen_appliances.jpg', 65,width: w,),
                        IconsWithTitle2("Sofa Sets", 'assets/images/computers.jpg', 65,width: w,),
                        IconsWithTitle2("Swings & Jhulas", 'assets/images/camera_icon.jpg', 65,width: w,),
                        IconsWithTitle2("Dressing Table", 'assets/images/home_appliances.jpg', 65,width: w,),
                        IconsWithTitle2("Home & Office Chairs", 'assets/images/computers.jpg', 65,width: w,),
                        IconsWithTitle2("Wardrobs & Cabinets", 'assets/images/computers.jpg', 65,width: w,),
                        IconsWithTitle2("Metal Almirah", 'assets/images/audio.jpg', 65,width: w,),
                        IconsWithTitle2("Book Shelves", 'assets/images/camera_icon.jpg', 65,width: w,),
                        IconsWithTitle2("Baby Chair & Heigh Chair", 'assets/images/kitchen_appliances.jpg', 65,width: w,),
                        Container(color: Colors.grey[300],height: 65,width: w,)
                        ],
                      ),
                    ],
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