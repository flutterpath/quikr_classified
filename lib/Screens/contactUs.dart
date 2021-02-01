import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFFEA1F2E),
        leading: IconButton(
          icon: Icon(Icons.arrow_back), 
          onPressed: (){
            Navigator.pop(context);
          }
          ),
        title: Text(
          'Contact Us',
          style: TextStyle(
            fontSize: 19,
            color: Colors.white,
          ),
        ),
      ),

      body: ListView(
             children: <Widget>[
           Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 100,),
              Text(
                'WE ARE HERE TO HELP YOU',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30,),
                     Padding(
                        padding: const EdgeInsets.all(20),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Container(
                                  height: 135,
                                  width: 135,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage('assets/images/IMG_20200522_151950.jpg'))
                                        ),
                                      ),
                                      Text(
                                        'Make a call',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Color(0xFFEA1F2E),
                                      ),
                                      ),
                                      
                                      ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 20,),
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Container(
                                  height: 145,
                                  width: 145,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage('assets/images/email.png'))
                                        ),
                                      ),
                                      Text(
                                        'Email Us',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Color(0xFFEA1F2E),
                                      ),
                                      ),
                                      
                                      ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                     Card(
                      elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                             height: 145,
                               width: 145,
                              child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/images/search20200522155006292.png'))
                                    ),
                                  ),
                                 Text(
                                  'Connect on Web',
                                style: TextStyle(
                                fontWeight: FontWeight.bold,
                                 fontSize: 16,
                                color: Color(0xFFEA1F2E),
                                ),
                              ),
                                      
                             ],
                           ),
                         ),
                      ),
                      SizedBox(height: 40,),
                      Text(
                        'Connect with us on social media',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/images/fbcirclecropped.png',height: 50,),
                                SizedBox(height: 8,),
                                Text(
                                  'Facebook',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 25,),
                          Container(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/images/circle-cropped(3).png',height: 50,),
                                SizedBox(height: 8,),
                                Text(
                                  'Instagram',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 25,),
                          Container(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/images/circle-cropped(2).png',height: 50,),
                                SizedBox(height: 8,),
                                Text(
                                  'LinkedIn',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 25,),
                          Container(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/images/circle-cropped(1).png',height: 50,),
                                SizedBox(height: 8,),
                                Text(
                                  'Youtube',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,)
            ],
          ),
        ),
             ]
      ),
      
    );
  }
}