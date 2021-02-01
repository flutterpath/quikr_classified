import 'package:flutter/material.dart';
import 'package:new_flutter/Screens/homeScreen.dart';
import 'package:new_flutter/Screens/myAds_Drawer.dart';

class PostAdSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFFEA1F2E),
        elevation: 2,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,),
         onPressed: (){
           Navigator.push(
           context, 
           MaterialPageRoute(builder: (context) => HomeScreen(), 
          )
         );
         }
         ),
        title: Text(
          'Post Ad Success',
          style: TextStyle(
            fontSize: 19,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 5),
            child: InkWell(
              onTap: (){
                Navigator.push(
                   context, 
                   MaterialPageRoute(builder: (context) => MyAdsDrawer(), 
                   )
                );
              },
               child: Text(
              'VIEW MY ADS',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("assets/images/notification.jpeg",height: 40,),
                    Text(
                    'Congratulation!',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  ],
                  ),
                  SizedBox(height: 10,),
                  RichText(
                    textAlign: TextAlign.center,
                     text:TextSpan(
                     children: <TextSpan>[
                     TextSpan(text: "You have recevied ",style: TextStyle(fontSize: 12,color: Colors.black)),
                     TextSpan(text: " \$100 QCash ",style: TextStyle(fontSize:12, color: Colors.green)),
                     TextSpan(text: "for successfully posting the Ad (ID:3325382). You can use it to upgrade your Ad into Premium.",style: TextStyle(fontSize: 12,color: Colors.black)),
                     ]
                    )
                   ),
                   SizedBox(height: 50,),
                   Text(
                     '(Mobile 9997052132 already verified)',
                     style: TextStyle(
                       color: Color(0xFFEA1F2E),
                       fontSize: 14
                     ),
                   ),
                   SizedBox(height: 50,),
                   Divider(color: Colors.grey,),
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Image.asset("assets/images/logo.jpg",height: 40,),
                         SizedBox(width: 10,),
                         Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: <Widget>[
                           Text(
                             "Are you looking to exchange your Car? ",
                             style: TextStyle(
                               fontSize: 14,
                               color: Colors.black
                               )
                               ),
                               SizedBox(height: 10,),
                               Row(
                                  children: <Widget>[
                                  Text(
                                  "Proceed ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFFEA1F2E),
                                    )
                                    ),
                                    Icon(Icons.arrow_forward,color: Color(0xFFEA1F2E),size: 18,)
                                  ]
                               ),
                           ]
                         )
                       ],
                     ),
                   ),
                   Divider(color: Colors.grey,),
                   SizedBox(height: 10,),
                   Text(
                    'Give More Reaxhability to your Ad',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Ads can reach over 30 million buyers & sellers',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey
                    ),
                  ),
                       Center(
                            child: Container(
                              margin: EdgeInsets.all(20),
                              height: 115,
                              width: 115,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(width:1,color: Colors.green),                        
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(height: 8,),
                                  Text(
                                    'PREMIUM',
                                    style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    '\$500/-',
                                    style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    '15 Days',
                                    style: TextStyle(
                                    fontSize: 10,
                                   color: Colors.grey,
                                    ),
                                  ),
                                  Image.asset("assets/images/notification.jpeg",height: 40,),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            height: 125,
                            width:MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(width:1,color: Colors.grey),                        
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 8,),
                                Text(
                                  'Featured as Premium in top 3 ads on Website,App',
                                  style: TextStyle(
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  'Reach Over 3 crore buyers & sellers',
                                  style: TextStyle(
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                       Text(
                                    'More Info',
                                    style: TextStyle(
                                    color: Color(0xFFEA1F2E),
                                    ),
                                  ),
                                 Icon(Icons.arrow_forward,color: Color(0xFFEA1F2E),size: 18,)
                                 ]
                                ),
                              ],
                            ),
                          ),
                          MaterialButton(
                            onPressed:(){},
                            height: 50,
                            minWidth: MediaQuery.of(context).size.width-50,
                            color: Color(0xFFEA1F2E),
                            child: Text(
                              'Make Premium',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => HomeScreen(), 
                              )
                            );
                            },
                            child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: <Widget>[
                             Text(
                              'Back to Quikr Home',
                              style: TextStyle(
                              color: Color(0xFFEA1F2E),
                              fontWeight: FontWeight.bold
                               ),
                              ),
                             Icon(Icons.arrow_forward,color: Color(0xFFEA1F2E),size: 18,)
                             ]
                            )
                          ),
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}