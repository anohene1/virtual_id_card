import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_id_card/models/virtual_i_d_card_icons.dart';
import 'package:virtual_id_card/widgets/widgets.dart';

class HowToUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "How To Use",
          style: TextStyle(fontSize: Get.width * 0.07, fontWeight: FontWeight.w100),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
        child: ListView(
          children: [
            SizedBox(height: Get.height * 0.03,),
            Text(
              "First Time Usage",
              style: TextStyle(
                fontFamily: "galaxy",
                fontSize: Get.width * 0.06,
              ),
            ),
            BodyText("1. Make sure NFC is turned on in phone's settings"),
            BodyText("2. Open Virtual ID Card" ),
            Row(
              children: [
                BodyText("3. Tap on " ),
                Icon(VirtualIDCard.add, size: Get.width * 0.04,),
                BodyText(" on the menu bar" )
              ],
            ),
            BodyText("4. Put card on the back of the phone as illustrated below to scan the card" ),
            SizedBox(height: Get.height * 0.03,),
            Container(
              height: Get.width * 0.4,
              width: Get.width * 0.4,
              child: Image.asset("assets/images/illustration.png"),
            ),
            BodyText("5. Tap on 'Scan' while card is still on the back of the phone to scan the card" ),
            SizedBox(height: 40,),
            Text(
              "Subsequent Usages",
              style: TextStyle(
                fontFamily: "galaxy",
                fontSize: Get.width * 0.07,
              ),
            ),
            BodyText("1. Make sure NFC is turned on in phone's settings" ),
            BodyText("2. Open Virtual ID Card" ),
            BodyText("3. Hold the phone to the sensor on the turnstile as illustrated below to unlock the turnstile" ),
            SizedBox(height: 15,),
            Container(
              height: Get.width * 0.3,
              width: Get.width * 0.3,
              child: Image.asset("assets/images/turnstile.png"),
            ),
          ],
        ),
      ),
    );
  }
}
