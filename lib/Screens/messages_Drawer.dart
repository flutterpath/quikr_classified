import 'package:flutter/material.dart';
import 'package:new_flutter/Widgets/categories.dart';

class MessagesDrawer extends StatelessWidget {
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
                  title: Text(
                    "Messages and Notifications",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        ),
                  ),
                  background: Image.asset('assets/images/IMG_20200518_175718.jpg',fit: BoxFit.cover),
                ),
              ),
    
              SliverFixedExtentList(
                itemExtent: 770,
                delegate: SliverChildListDelegate(
                  [
                    Column(
                    children: <Widget>[ 
                      Divider(
                      thickness: 10,
                      color: Colors.grey[200],
                    ),
                    ListTile(
                      title: Text(
                        'Notifications',
                        style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    Divider(
                      thickness: 10,
                      color: Colors.grey[200],
                    ),
                    Container(
                      color: Color(0xFFFCB045),
                      child: ListTile(
                        title: Text(
                          'Offers For You',
                          style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    Divider(
                      thickness: 10,
                      color: Colors.grey[200],
                    ),
                      Container(
                        width: 600,
                    color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Chats',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'You have no active chats',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                    ),
                    Divider(
                      thickness: 10,
                      color: Colors.grey[200],
                    ),
                    Container(
                      width: 600,
                    color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                        Text(
                          'Alerts',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'You have no Alerts',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        Divider(
                      thickness: 2,
                      color: Colors.grey[200],
                    ),
                    Container(
                      height: 40,
                      child: Align(
                        alignment: Alignment.center,
                         child: InkWell(
                           onTap: (){
                            Navigator.push(  
                            context,  
                            MaterialPageRoute(builder: (context) => Categories(title: "Select Category"), 
                            )
                            );
                           },
                           child: Text(
                            'Create an alert',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16
                            ),
                        ),
                         ),
                      ),
                    ),
                    Divider(
                      thickness: 10,
                      color: Colors.grey[200],
                    ),
                      ],
                    ),
                  ),
                    ),
                    ]
                ),
                   
                  ],
                ),
              ),
            ],
          ),
        );
      }
    
    }

