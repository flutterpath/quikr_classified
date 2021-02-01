import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {

 final String image;

  const OffersScreen({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.78,
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.contain
              ),
            ),
          ),
        )
        );
  }
}