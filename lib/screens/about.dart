import 'package:flutter/material.dart';
import 'package:get/get.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("About", style: TextStyle(fontSize: Get.width * 0.07, fontWeight: FontWeight.w100),),
      ),
    );
  }
}