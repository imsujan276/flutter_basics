import 'package:firstapp/ui_practice_1.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget image = Container();
  Image image_asset = Image.asset(
    'assets/image_1.jpg',
    fit: BoxFit.fitHeight,
  );
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        child: ContactUi(),
      ),
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          ///for image portion on top of screen
          Container(
            color: Colors.grey[400],
            height: screenHeight,
            width: screenWidth,
            child: image,
          ),

          ///for add button to show image
          MaterialButton(
            color: Colors.amber,
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onPressed: () {
              setState(() {
                image = image_asset;
              });
            },
          )
        ],
      ),
    );
  }
}
