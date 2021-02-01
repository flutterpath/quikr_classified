import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            body: Column(
              children: <Widget>[
                Container(
                  height: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xFF017EBE),
                          Color(0xFF1FBBC5),
                          ]
                       )
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            IconButton(icon: Icon(Icons.cancel),color: Colors.white, onPressed: (){}),
                            Text(
                              'LOgin / Register',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white
                              ),
                            )
                          ],
                        ),
                        PageView(
                          controller: _controller,
                          children: [
                            Page1(),
                            Page2(),
                            Page3(),
                          ],
                        )
                      ],
                    ),
                ),
              ],
            ),
      ),
    );
  }
}
class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 100,
      
      child: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/IMG_20200501_144943.jpg'),
            Text(
              'Sync Across Devices',
              style: TextStyle(
                fontSize: 26,
                color: Colors.white
              ),
            ),
            Text(
              'Access yuor account imformation on multiple devices',
              style: TextStyle(
                color: Colors.white
              ),
            )
          ],
        ),
      ),
      
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 100,

      child: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/IMG_20200501_144943.jpg'),
            Text(
              'Track Orders',
              style: TextStyle(
                fontSize: 26,
                color: Colors.white
              ),
            ),
            Text(
              'Track the status for your orders',
              style: TextStyle(
                color: Colors.white
              ),
            )
          ],
        ),
      ),
      
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 100,

      child: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/IMG_20200501_144943.jpg'),
            Text(
              'Doorstep Delivery',
              style: TextStyle(
                fontSize: 26,
                color: Colors.white
              ),
            ),
            Text(
              'Get cashback and free shipping(terms apply)',
              style: TextStyle(
                color: Colors.white
              ),
            )
          ],
        ),
      ),
      
    );
  }
}