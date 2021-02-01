import 'package:flutter/material.dart';
import 'package:new_flutter/Widgets/subCategoriesCars.dart';

class Categories extends StatelessWidget {

  final String title;

  const Categories({Key key, this.title}) : super(key: key);

  categories(String image,String title){

    return ListTile(
      leading: Image.asset(image,height: 40,),
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
                  'Select Category',
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
                    MaterialPageRoute(
                      builder: (context)=>SubCatrgoriesCars(title: "Cars & Bikes")
                      )
                      );
                },
          child:categories('assets/images/cars_icon.jpg', 'Cars & Bikes'),
          ),
          categories('assets/images/mobiles_icon.jpg', 'Mobiles & Tablets'),
          categories('assets/images/electronic_icon.jpg', 'Electronics & Appliances'),
          categories('assets/images/realEstate_icon.jpg', 'Real Estate'),
          categories('assets/images/lifeStyle_icon.jpg', 'Home & Lifestyle'),
          categories('assets/images/job_icon.jpg', 'Jobs'),
          categories('assets/images/services_icon.jpg', 'Services'),
          categories('assets/images/entertainment_icon.jpg', 'Entertainment'),
          categories('assets/images/education_icon.jpg', 'Education & Training'),
          categories('assets/images/pets_icon.jpg', 'Pets & Pet Care'),
          categories('assets/images/community_icon.jpg', 'Community'),
          categories('assets/images/events_icon.jpg', 'Events'),
          categories('assets/images/matrimonial_icon.jpg', 'Matrimonial'),

          ]
        ),
      ),
        ],
      )
      
    );
  }
}