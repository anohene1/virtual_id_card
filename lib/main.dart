import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/screens.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Virtual ID Card",
      home: Nav(),
      theme: ThemeData(
        accentColor: Colors.black,
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'myriad',
      ),
    );
  }
}
