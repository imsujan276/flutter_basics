import 'package:firstapp/facebook_ui/facebook.dart';
import 'package:firstapp/fest_project/web_home.dart';
import 'package:firstapp/ui_practice_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.deepPurple));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WebHome(),
  ));
}
