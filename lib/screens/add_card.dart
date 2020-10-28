import 'package:flutter/material.dart';
import 'package:flutter_nfc_reader/flutter_nfc_reader.dart';
import 'package:get/get.dart';

class AddCard extends StatelessWidget {

  var uid;

  _showSnackBar() {
    Get.snackbar("Yayy!🎉", "Scanning is done, you can remove card now",
        snackPosition: SnackPosition.BOTTOM,
        snackStyle: SnackStyle.FLOATING,
        colorText: Colors.black,
        borderRadius: 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Add Card", style: TextStyle(fontSize: Get.width * 0.07, fontWeight: FontWeight.w100),),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: Get.width * 0.5,
              width: Get.width * 0.5,
              child: Image.asset("assets/images/illustration.png"),
            ),
            SizedBox(height: 10,),
            Text("Put card on the back of the phone to scan.", style: TextStyle(fontSize: Get.width * 0.05),),
            SizedBox(height: 20,),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: InkWell(
                onTap: (){
                  FlutterNfcReader.read().then((response) {
                    print(response.id);
                    uid = response.id;
                    print("uid is $uid");
                    _showSnackBar();
                  });
                },
                child: Container(
                  height: Get.width * 0.1,
                  width: Get.width * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.black
                    )
                  ),
                  child: Center(
                    child: Text(
                      'Scan'
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
