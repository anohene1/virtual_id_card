import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodyText extends StatelessWidget {

  final String text;

  const BodyText(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 0.015),
      child: Text(text, style: TextStyle(fontSize: Get.width * 0.045),),
    );
  }
}
