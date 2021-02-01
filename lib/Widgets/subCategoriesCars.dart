import 'package:flutter/material.dart';
import 'package:new_flutter/Screens/postAdDetailScreen.dart';

class SubCatrgoriesCars extends StatelessWidget {

  final String title;

  const SubCatrgoriesCars({Key key, this.title}) : super(key: key);

  categories(String title){

    return ListTile(
      title: Text(title),
      trailing: Icon(Icons.navigate_next),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
         backgroundColor: Color(0xFFEA1F2E),

          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
           onPressed: () {
                Navigator.pop(context);
              }
             ),
          title: Text(
            title,
                style: TextStyle(
                  fontSize: 19
                ),
                ),
             ),

      body: 
      Column(
        children: <Widget>[
          Container(
              alignment: Alignment.centerLeft,
              height: 50,
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Select Sub-Category',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
      
      Expanded(
              child: ListView(
          children: <Widget>[
            InkWell(
              onTap: (){
                Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => PostAdDetailScreen(), 
                 )
               );
              },
          child: categories('Cars'),
            ),
          categories('Bikes & Scooters'),
          categories('Commercial Vehicles'),
          categories('Spare Parts - Accessories'),
          categories('Other Vehicals'),
          
          ]
        ),
      ),
        ],
      )
      
    );
  }
}