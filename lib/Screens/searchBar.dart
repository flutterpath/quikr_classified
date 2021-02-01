import 'package:flutter/material.dart';
import 'package:new_flutter/Widgets/textFieldForSearch.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {

  coustomListTile(String image,String title){

    return Container(
      height: 52,
      color: Colors.white,
      child: ListTile(
        leading: Image.asset(image,height: 35,),
        title: Text(title),
      ),
    );

    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          backgroundColor: Color(0xFFEA1F2E),
          elevation: 0,  

        title: TextFieldForSearch(hintTxt: "Search"),
        
        leading: IconButton(
          icon: Icon(Icons.arrow_back), 
          onPressed: () {
                Navigator.pop(context);
              }
            ),

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.keyboard_voice),color: Colors.white,
            onPressed: (){}),
        ],
        
      ),

      body: Container(
        color: Colors.grey[300],
        child: ListView(
          children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Trending Searches',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
              ),
            ),
          ),
          coustomListTile('assets/images/IMG_20200508_185820.jpg','Royal Enfield Classic 350')
          ]
        ),
      )
      
    );
  }
}