import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Home"),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              print('back button pressed');
            },
            icon: Text('<-'),
          )),
    
    );
  }
}
