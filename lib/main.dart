import 'package:firstapp/home.dart';
import 'package:firstapp/ui_practice_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.teal,
    systemNavigationBarColor: Colors.teal
  ));
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home(),));
}
