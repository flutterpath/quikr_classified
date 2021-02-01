import 'package:flutter/material.dart';
import 'package:new_flutter/Screens/postAdSuccessScreen.dart';
import 'package:new_flutter/Widgets/categories.dart';
import 'package:new_flutter/Widgets/subCategoriesCars.dart';

class PostAdDetailScreen extends StatefulWidget {
  @override
  _PostAdDetailScreenState createState() => _PostAdDetailScreenState();
}

class _PostAdDetailScreenState extends State<PostAdDetailScreen> {

  int _radioValue=0;


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

   String _btn1SelectedVal;
   String _btn1SelectedVal2;
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
                'Post Free Ad',
                    style: TextStyle(
                      fontSize: 19
                    ),
                    ),
                 ),
                 
                 body: ListView(
                   children: <Widget>[
                     Material(
                       color: const Color(0xFFEBF8FF),
                      child: ListTile(
                         leading: Image.asset('assets/images/IMG_20200511_203308.jpg'),
                         title: RichText(
                                text:TextSpan(
                                children: <TextSpan>[
                                TextSpan(text: 'Post Free Ad to earn',style: TextStyle(fontSize: 14,color: Colors.black)),
                                TextSpan(text: " \$500 QCash ",style: TextStyle(fontSize:14, color: Colors.green)),
                                TextSpan(text: 'in your account',style: TextStyle(fontSize: 14,color: Colors.black)),
                                 ]
                                )
                              ),
                       ),
                     ),
                     Container(
                      alignment: Alignment.centerLeft,
                      height: 50,
                      color: Colors.grey[300],
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Ad Details',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "Category",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => Categories(title: 'Post Ad'), 
                              )
                            );
                            },
                           child: ListTile(
                              title: Text(
                                'Cars & Bikes'
                              ),
                              trailing: Icon(Icons.arrow_forward_ios,size: 15,),
                            ),
                          ),
                          Divider(color: Colors.grey,),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "Sub Category",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => SubCatrgoriesCars(title: "Cars",), 
                              )
                            );
                            },
                           child: ListTile(
                              title: Text(
                                'Cars'
                              ),
                              trailing: Icon(Icons.arrow_forward_ios,size: 15,),
                            ),
                          ),
                          Divider(color: Colors.grey,),    
                          Center(
                            child: Container(
                              margin: EdgeInsets.only(top:50),
                              height: 80,
                              width: 100,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(width:2,color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)                            
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.camera_enhance,size: 30,color: Colors.grey,),
                                  SizedBox(height: 8,),
                                  Text(
                                    'Add Photos',
                                    style: TextStyle(
                                    color: Colors.black54
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Center(
                            child: Text(
                              'You can add up to 30 photos',
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          SizedBox(height: 6,),
                          Center(
                            child: Text(
                              'First photo of your selection will be cover photo'
                            ),
                          ),
                          SizedBox(height: 50,),
                          Divider(color: Colors.grey,), 
                          DropdownButtonFormField(
                            hint: Text('Brand *'),
                            value: _btn1SelectedVal,
                            onChanged: (String newValue){
                              setState(() {
                                _btn1SelectedVal=newValue;
                              });
                            },
                            items: this._dropDownMenuItems,
                        ),
                          DropdownButtonFormField(
                            hint: Text('Model *'),
                            value: _btn1SelectedVal,
                            onChanged: (String newValue){
                              setState(() {
                                _btn1SelectedVal2=newValue;
                              });
                            },
                            items: this._dropDownMenuItems,
                        ),
                        DropdownButtonFormField(
                            hint: Text('Variant/Version *'),
                            value: _btn1SelectedVal,
                            onChanged: (String newValue){
                              setState(() {
                                _btn1SelectedVal2=newValue;
                              });
                            },
                            items: this._dropDownMenuItems,
                        ),
                        DropdownButtonFormField(
                            hint: Text('Fuel Type *'),
                            value: _btn1SelectedVal,
                            onChanged: (String newValue){
                              setState(() {
                                _btn1SelectedVal2=newValue;
                              });
                            },
                            items: this._dropDownMenuItems,
                        ),
                        DropdownButtonFormField(
                            hint: Text('Year of Registration *'),
                            value: _btn1SelectedVal,
                            onChanged: (String newValue){
                              setState(() {
                                _btn1SelectedVal2=newValue;
                              });
                            },
                            items: this._dropDownMenuItems,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Kms Driven *",
                            labelStyle: TextStyle(
                              color: Colors.grey
                            )
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Price *",
                            labelStyle: TextStyle(
                              color: Colors.grey
                            )
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text(
                          'You are *',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Radio(
                          value: 0, 
                          groupValue: _radioValue, 
                          onChanged: null
                          ),
                          Text(
                            'Individual'
                          ),
                           Radio(
                          value: 1, 
                          groupValue: _radioValue, 
                          onChanged: null
                          ),
                          Text(
                            'Dealer'
                          ),
                          
                          ],
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Description',
                            hintText: "Ad Description (Min. 30 character) *",
                            errorText: 'Min. 30 character',
                            labelStyle: TextStyle(
                              color: Colors.grey
                            )
                          ),
                        ),
                        
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  color: Colors.grey[300],
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                  'Your contact information',
                   textAlign: TextAlign.left,
                  style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Colors.black54
                   ),
                  ),
                ),
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
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      DropdownButtonFormField(
                 hint: Text('City *'),
                 value: _btn1SelectedVal,
                onChanged: (String newValue){
                 setState(() {
                   _btn1SelectedVal=newValue;
                 });
                },
                items: this._dropDownMenuItems,
               ),
               DropdownButtonFormField(
                 hint: Text('Locality *'),
                 value: _btn1SelectedVal,
                onChanged: (String newValue){
                 setState(() {
                   _btn1SelectedVal=newValue;
                 });
                },
                items: this._dropDownMenuItems,
               ),
               SizedBox(height: 10,),
               TextFormField(
                 decoration: InputDecoration(
                 labelText: "Name *",
                 labelStyle: TextStyle(
                 color: Colors.grey
                 )
                ),
               ),
               SizedBox(height: 10,),
               TextFormField(
                 decoration: InputDecoration(
                 labelText: "Email *",
                 labelStyle: TextStyle(
                 color: Colors.grey
                 )
                ),
               ),
               SizedBox(height: 10,),
               TextFormField(
                 decoration: InputDecoration(
                 labelText: "Mobile *",
                 labelStyle: TextStyle(
                 color: Colors.grey
                 )
                ),
               ),
               SizedBox(height: 10,),
               Text(
                 'An OTP will be sent and read if given number is not verified',
                  style: TextStyle(
                   fontSize: 14,
                    ),
                  ),
                  Text(
                 'Verifying your number creates trust and increase your chances of getting the real deal.',
                  style: TextStyle(
                   fontSize: 12,
                   color: Colors.grey
                    ),
                  ),
                  ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  color: Colors.grey[300],
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: <Widget>[
                      Text(
                      'By proceeding, you agree to our Terms of Use & Privacy Policy',
                       textAlign: TextAlign.left,
                      style: TextStyle(
                       fontWeight: FontWeight.bold,
                       color: Colors.black54
                       ),
                      ),
                      RaisedButton(
                        color: Color(0xFFEA1F2E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        onPressed:(){
                          Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => PostAdSuccess(), 
                          )
                        );
                        },
                        child: Text(
                          'Post Your Ad',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ), 
                      )
                    ],
                  ),
                ),
                ],
             ),
      
    );
  }
}