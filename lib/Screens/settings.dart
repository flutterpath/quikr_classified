import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(     
          backgroundColor: Color(0xFFEA1F2E),
          leading: IconButton(icon:Icon(Icons.arrow_back), onPressed: () {Navigator.pop(context);},),
          title: Text(
            "Settings",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),
          ),
      ),
      
  body: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.perm_identity),
        title: Text(
        'Profile',
        style: TextStyle(
          fontSize: 14,
        ),
      ),
      ),
      ListTile(
        leading: Icon(Icons.lock_outline),
        title: Text(
        'Change Password',
        style: TextStyle(
          fontSize: 14,
        ),
      ),
      ),
      ListTile(
        leading: Icon(Icons.edit),
        title: Text(
        'Edit Profile',
        style: TextStyle(
          fontSize: 14,
        ),
      ),
      ),
      ListTile(
        leading: Icon(Icons.perm_identity),
        title: Text(
        'Language',
        style: TextStyle(
          fontSize: 14,
        ),
      ),
      trailing: Text(
        'English',
        style: TextStyle(
          fontSize: 14,
          color: Colors.blue
        ),
      ),
      ),
      ListTile(
        leading: Icon(Icons.help_outline),
        title: Text(
        'Help',
        style: TextStyle(
          fontSize: 14,
        ),
      ),
      ),
      ListTile(
        leading: Icon(Icons.details),
        title: Text(
        'About',
        style: TextStyle(
          fontSize: 14,
        ),
      ),
      ),
      ListTile(
        leading: Icon(Icons.share),
        title: Text(
        'Share App',
        style: TextStyle(
          fontSize: 14,
        ),
      ),
      ),
      SizedBox(height: 50,),
      Align(
        alignment: Alignment.center,
         child: FloatingActionButton.extended(
          onPressed: (){}, 
          backgroundColor: Color(0xFFEA1F2E),
          icon: Icon(Icons.power_settings_new),
          label:Text(
            'Log Out',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white
            ),
          ) 
          ),
      )
    ],
  ),

    );
  }
}