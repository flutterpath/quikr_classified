import 'package:flutter/material.dart';
import 'package:new_flutter/Screens/searchBar.dart';

class CarsTabBody extends StatelessWidget {

  double _startValue=0;
  double _endValue=100000;
  double minValue=0;
  double maxValue=1000000;

  final startController = TextEditingController();
  final endController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(

      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
                SizedBox(height: 10,),
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
                    child: Card(
                      elevation: 5,
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
             SizedBox(height: 50,),
             Text(
               'Find Your Next Car',
               style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.bold
               ),
             ),
             SizedBox(height: 30,),
             Text(
               'Your Budget',
               style: TextStyle(
                 fontWeight: FontWeight.bold
               ),
             ),
             SizedBox(height: 10,),
             
          ],
        )
      ],
      
    );
  }
}