import 'package:flutter/material.dart';

class SimpleForm extends StatefulWidget {
  @override
  _SimpleFormState createState() => _SimpleFormState();
}

class _SimpleFormState extends State<SimpleForm> {
  String text = 'empty';
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          ///text to be displayed after
          ///clicking button
          Text(text),

          ///for textfield
          TextField(
            controller: _controller,
          ),

          ///for button
          MaterialButton(
            color: Colors.green,
            onPressed: () {
              setState(() {
                text = _controller.text;
              });
            },
            child: Text('Press to Display'),
          )
        ],
      ),
    );
  }
}
