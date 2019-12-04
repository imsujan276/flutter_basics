import 'package:firstapp/home.dart';
import 'package:firstapp/settings/settings.dart';
import 'package:firstapp/text_field.dart';
import 'package:firstapp/ui_practice_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.teal,
    statusBarColor: Colors.teal,

  ));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SimpleForm(),
    routes: {'/contacts': (context) => ContactUi()},
  ));
}
