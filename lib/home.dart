import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          /// for integer
          Text('$number'),

          ///for increment and decrement buttons

          //for decrement button
          MaterialButton(
            color: Colors.blue,
            child: Text('-'),
            onPressed: () {
              setState(() {
                number--;
              });
            },
          ),

          ///for increment button
          MaterialButton(
            color: Colors.red,
            child: Text('+'),
            onPressed: () {
              setState(() {
                number++;
              });
            },
          )
        ],
      ),
    );
  }
}
