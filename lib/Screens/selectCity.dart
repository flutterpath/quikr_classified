import 'package:flutter/material.dart';
import 'package:new_flutter/Data/indianCities.dart';
import 'package:new_flutter/Widgets/textFieldForSearch.dart';

class SelectCity extends StatefulWidget {
  @override
  _SelectCityState createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {

  var city=new IndianCities();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar(
          backgroundColor: Color(0xFFEA1F2E),
          elevation: 0,  

        title: TextFieldForSearch(hintTxt: "Search for your city"),
        
        leading: IconButton(
          icon: Icon(Icons.arrow_back), 
          onPressed: () {
                Navigator.pop(context);
              }
            ),
      ),

      body: Column(
        children: <Widget>[
          InkWell(
            onTap: (){},
              child: ListTile(
              title: Text(
                'Use Current Location',
              ),
              trailing: IconButton(
                icon: Icon(Icons.my_location),
                onPressed: (){}
                ),
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              height: 50,
              color: Colors.grey[300],
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Popular Cities',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
              ),
            ),
            Expanded(
               child: ListView.builder(
                  itemCount: city.popularCities.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey[200])),
                      ),
                      child: InkWell(
                        onTap: (){},
                            child: ListTile(
                          title: Text(city.popularCities[index]),
                        ),
                      ),
                    );
                  },
                )
            )
        ],
      ),
      
    );
  }
}