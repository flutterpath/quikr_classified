import 'dart:ui';

import 'package:flutter/material.dart';

class QCashScreen extends StatefulWidget {
  @override
  _QCashScreenState createState() => _QCashScreenState();
}

class _QCashScreenState extends State<QCashScreen> {

static const menuItems = <String>[
    '\$50',
    '\$100',
    '\$250',
    '\$500',
    '\$1000',
    '\$2000',
    '\$5000',
    '\$10000',
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  String _btn1SelectedVal = '\$50';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back), 
                  onPressed: (){
                    Navigator.pop(context);
                  }
                  ),
                backgroundColor: Color(0xFFEA1F2E),
                floating: false,
                pinned: true,
                expandedHeight: 200.0,
    
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                         TextSpan(text: "QCash\n",style: TextStyle(fontSize: 20,color: Colors.white)),
                          TextSpan(text: "    \$500",style: TextStyle(fontSize: 14,color: Colors.white),),
                      ]
                    )
                    ),
                  background:Image.asset('assets/images/indianrupee1.jpg',fit: BoxFit.cover,),
                ),
              ),
    
              SliverFixedExtentList(
                itemExtent: 1000,
                delegate: SliverChildListDelegate(
                  [
                    
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                   Divider(
                      thickness: 10,
                      color: Colors.grey[200],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                height: 125,
                                width: 125,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage('assets/images/IMG_20200505_185906.jpg'))
                                      ),
                                    ),
                                    Text(
                                      'QCash',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.green
                                    ),
                                    ),
                                    Text(
                                      '\$500',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                    ),
                                    ],
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                height: 125,
                                width: 125,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage('assets/images/IMG_20200505_185755.jpg'))
                                      ),
                                    ),
                                    Text(
                                      'Cash Balance',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.green
                                    ),
                                    ),
                                    Text(
                                      '\$0',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
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
                      Divider(
                      thickness: 10,
                      color: Colors.grey[200],
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'HOW TO USE IT?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                      child: Text(
                        'QCash can be used across all the products and services listed in the Quikr app. You just have to redeem your QCash balance at the time of payment.',
                       textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 10,
                      color: Colors.grey[200],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 10),
                      child: Text(
                        'Gift Cards',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),     
                    Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 145,
                    color: Color(0xFFCBEBEA),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                        width: 145,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 10,),
                            CircleAvatar(
                              backgroundImage:AssetImage('assets/images/IMG_20200508_193039.jpg'),
                              radius: 40,
                              ),
                              SizedBox(height: 10,),
                            Text(
                              'Select GiftCard and the denomination',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12
                              ),
                            ),
                          ],
                        ),
                      ),
                Container(
                  width: 145,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10,),
                      CircleAvatar(
                        backgroundImage:AssetImage('assets/images/IMG_20200508_193149.jpg'),
                        radius: 40,
                        ),
                        SizedBox(height: 10,),
                      Text(
                        'Make the Payment\n(QCash applied automatically) ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 145,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10,),
                      CircleAvatar(
                        backgroundImage:AssetImage('assets/images/IMG_20200508_193132.jpg'),
                        radius: 40,
                        ),
                        SizedBox(height: 10,),
                      Text(
                        'You will receive the e-voucher over email with in 24hrs',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12
                        ),
                      ),
                    ],
                  ),
                ),
                  ],
                 ),
                ),  
                
                 Padding(
                      padding: const EdgeInsets.only(left: 10,top: 10),
                      child: Text(
                        'Gift Cards',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),     
                    Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 280,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      
                  coustomCard('assets/images/flipkart.png', 'Flipkart', 'Use Upto \$60 QCash'),
                  coustomCard('assets/images/flipkart.png', 'Flipkart', 'Use Upto \$60 QCash'),
                  coustomCard('assets/images/flipkart.png', 'Flipkart', 'Use Upto \$60 QCash'),
                
                  ],
                 ),
                ),
                              
                      ],
                    ),
                   
                  ],
                ),
              ),
            ],
          ),
        );
  }

                   Widget coustomCard(String image,String company,String qCash){
                     return Padding(
                        padding: const EdgeInsets.only(left: 15,bottom: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]),
                            color: Color(0xFFCBEBEA),
                          ),
                        height: 200,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[ 
                          Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                              image: AssetImage(image),
                              fit: BoxFit.fill,
                              ),
                             borderRadius: BorderRadius.circular(10)
                            ),
                          height: 130,
                          width: MediaQuery.of(context).size.width * 0.8,
                          ),
                        ),
                        Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        company,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child: Text(
                        qCash,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          DropdownButton<String>(
                            value: _btn1SelectedVal,
                            onChanged: (String newValue){
                              setState(() {
                                _btn1SelectedVal=newValue;
                              });
                            },
                            items: this._dropDownMenuItems,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: MaterialButton(
                              onPressed: (){},
                              child: Text(
                                'Buy',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              color: Color(0xFFEA1F2E),
                              shape: StadiumBorder(),
                              elevation: 10,
                            ),
                          )
                        ],
                      ),
                      ),
                     ]
                  ),
                ),
                  );
                  }
}