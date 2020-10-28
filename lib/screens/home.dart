import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Virtual ",
              style: TextStyle(fontFamily: "galaxy", fontSize: Get.width * 0.07),
            ),
            Text(
              "ID Card",
              style: TextStyle(fontSize: Get.width * 0.07, fontWeight: FontWeight.w100),
            )
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Container(
            height: Get.width * 0.8,
            width: Get.width * 0.8,
            child: Image.asset(
              'assets/images/virtualcard.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
