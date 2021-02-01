import 'package:flutter/material.dart';
import 'package:new_flutter/Screens/chats.dart';
import 'package:new_flutter/Screens/searchBar.dart';
import 'package:new_flutter/Screens/selectCity.dart';
import 'package:new_flutter/Widgets/drawerItems.dart';
import 'package:new_flutter/Widgets/iconsWithTitle.dart';
import 'package:new_flutter/Widgets/offersScreen.dart';

class Assured extends StatefulWidget {
  @override
  _AssuredState createState() => _AssuredState();
}

class _AssuredState extends State<Assured> with TickerProviderStateMixin {
  
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 5, vsync: this);
    }
       
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
              icon: Icon(Icons.chat), 
              onPressed: (){
                     Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context) => Chats(), 
                       )
                    );
                   },
              ),
              IconButton(
              icon: Icon(Icons.search), 
              onPressed: (){
                Navigator.push(
                       context, 
                       MaterialPageRoute(builder: (context) => SearchBar(), 
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
            children: <Widget>[
              Image.asset('assets/images/full_name.jpg',height: 40,),
              SizedBox(height: 10,),
              Text(
                "Quality Assured | Seamless & Convenient | Value for Money",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  
                  IconsWithTitle("All Furnitures",'assets/images/all_furnitures.jpg',110,width: 120,price: '',),
                  IconsWithTitle("All Electronic",'assets/images/all_electronic.jpg',110,width: 120,price: '',),
                  IconsWithTitle("Refrigerator",'assets/images/refrigerator.jpg',110,width: 120,price: '',),
                  IconsWithTitle("Washing Machine",'assets/images/washing_machine.jpg',110,width: 120,price: '',),
                  ],
                 ),
                ),
                Divider(
                  thickness: 15,
                  color: Colors.grey[300],
                ),
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
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Assured Electronics',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Image.asset('assets/images/full_name.jpg',height: 40,),
                    ],
                  ),
                ),
              
                TabBar(
                  isScrollable: true,
                  controller: _controller,
                  tabs: [
                    Tab(
                      child: Text(
                        'TVS',
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                    ),
                   Tab(
                      child: Text(
                        'LAPTOPS',
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'REFRIGERATORS',
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'WASHING MACHINES',
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'ACS',
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),
                  Container(
                    height: 180,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TabBarView(
                        controller: _controller,
                        children:<Widget>[
                          ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            
                            IconsWithTitle("Furnitures",'assets/images/all_furnitures.jpg',110,width: 120,price: '\$39999',),
                            IconsWithTitle("Electronic",'assets/images/all_electronic.jpg',110,width: 120,price: '\$39999',),
                            IconsWithTitle("Refrigerator",'assets/images/refrigerator.jpg',110,width: 120,price: '\$39999',),
                            IconsWithTitle("Washing Machine",'assets/images/washing_machine.jpg',110,width: 120,price: '\$39999',),
                            ],
                          ),
                          ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            
                            IconsWithTitle("Furnitures",'assets/images/all_furnitures.jpg',110,width: 120,price: '\$39999',),
                            IconsWithTitle("Electronic",'assets/images/all_electronic.jpg',110,width: 120,price: '\$39999',),
                            IconsWithTitle("Refrigerator",'assets/images/refrigerator.jpg',110,width: 120,price: '\$39999',),
                            IconsWithTitle("Washing Machine",'assets/images/washing_machine.jpg',110,width: 120,price: '\$39999',),
                            ],
                          ),
                          ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            
                            IconsWithTitle("Furnitures",'assets/images/all_furnitures.jpg',110,width: 120,price: '\$39999',),
                            IconsWithTitle("Electronic",'assets/images/all_electronic.jpg',110,width: 120,price: '\$39999',),
                            IconsWithTitle("Refrigerator",'assets/images/refrigerator.jpg',110,width: 120,price: '\$39999',),
                            IconsWithTitle("Washing Machine",'assets/images/washing_machine.jpg',110,width: 120,price: '\$39999',),
                            ],
                          ),
                          ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            
                            IconsWithTitle("Furnitures",'assets/images/all_furnitures.jpg',110,width: 120,price: '\$39999',),
                            IconsWithTitle("Electronic",'assets/images/all_electronic.jpg',110,width: 120,price: '\$39999',),
                            IconsWithTitle("Refrigerator",'assets/images/refrigerator.jpg',110,width: 120,price: '\$39999',),
                            IconsWithTitle("Washing Machine",'assets/images/washing_machine.jpg',110,width: 120,price: '\$39999',),
                            ],
                          ),
                          ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            
                            IconsWithTitle("Furnitures",'assets/images/all_furnitures.jpg',110,width: 120,price: '\$39999',),
                            IconsWithTitle("Electronic",'assets/images/all_electronic.jpg',110,width: 120,price: '\$39999',),
                            IconsWithTitle("Refrigerator",'assets/images/refrigerator.jpg',110,width: 120,price: '\$39999',),
                            IconsWithTitle("Washing Machine",'assets/images/washing_machine.jpg',110,width: 120,price: '\$39999',),
                            ],
                          ),
                        ] 
                        ),
                    )
                ),
            Divider(color: Colors.grey,),
            Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'View All',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 15,
              color: Colors.grey[300],
            ),
            Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Assured Furniture',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Image.asset('assets/images/full_name.jpg',height: 40,),
                    ],
                  ),
                ),
              
                TabBar(
                  isScrollable: true,
                  controller: _controller,
                  tabs: [
                    Tab(
                      child: Text(
                        'All',
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                    ),
                   Tab(
                      child: Text(
                        'BED SETS',
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'SOFA SETS',
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'DINING TABLES',
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'OFFICE CHAIR',
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 180,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBarView(
                  controller: _controller,
                  children:<Widget>[
                    ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      
                      IconsWithTitle("Furnitures",'assets/images/all_furnitures.jpg',110,width: 120,price: '\$39999',),
                      IconsWithTitle("Electronic",'assets/images/all_electronic.jpg',110,width: 120,price: '\$39999',),
                      IconsWithTitle("Refrigerator",'assets/images/refrigerator.jpg',110,width: 120,price: '\$39999',),
                      IconsWithTitle("Washing Machine",'assets/images/washing_machine.jpg',110,width: 120,price: '\$39999',),
                      ],
                    ),
                    ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      
                      IconsWithTitle("Furnitures",'assets/images/all_furnitures.jpg',110,width: 120,price: '\$39999',),
                      IconsWithTitle("Electronic",'assets/images/all_electronic.jpg',110,width: 120,price: '\$39999',),
                      IconsWithTitle("Refrigerator",'assets/images/refrigerator.jpg',110,width: 120,price: '\$39999',),
                      IconsWithTitle("Washing Machine",'assets/images/washing_machine.jpg',110,width: 120,price: '\$39999',),
                      ],
                    ),
                    ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      
                      IconsWithTitle("Furnitures",'assets/images/all_furnitures.jpg',110,width: 120,price: '\$39999',),
                      IconsWithTitle("Electronic",'assets/images/all_electronic.jpg',110,width: 120,price: '\$39999',),
                      IconsWithTitle("Refrigerator",'assets/images/refrigerator.jpg',110,width: 120,price: '\$39999',),
                      IconsWithTitle("Washing Machine",'assets/images/washing_machine.jpg',110,width: 120,price: '\$39999',),
                      ],
                    ),
                    ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      
                      IconsWithTitle("Furnitures",'assets/images/all_furnitures.jpg',110,width: 120,price: '\$39999',),
                      IconsWithTitle("Electronic",'assets/images/all_electronic.jpg',110,width: 120,price: '\$39999',),
                      IconsWithTitle("Refrigerator",'assets/images/refrigerator.jpg',110,width: 120,price: '\$39999',),
                      IconsWithTitle("Washing Machine",'assets/images/washing_machine.jpg',110,width: 120,price: '\$39999',),
                      ],
                    ),
                    ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      
                      IconsWithTitle("Furnitures",'assets/images/all_furnitures.jpg',110,width: 120,price: '\$39999',),
                      IconsWithTitle("Electronic",'assets/images/all_electronic.jpg',110,width: 120,price: '\$39999',),
                      IconsWithTitle("Refrigerator",'assets/images/refrigerator.jpg',110,width: 120,price: '\$39999',),
                      IconsWithTitle("Washing Machine",'assets/images/washing_machine.jpg',110,width: 120,price: '\$39999',),
                      ],
                    ),
                  ] 
                  ),
              )
                ),
                Divider(color: Colors.grey,),
            Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'View All',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                ),
              ),
            ),
            Divider(color: Colors.grey,),
        ]
          ),
        ],
      ),

    );
  }
}