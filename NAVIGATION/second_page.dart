import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){Get.back(result: "aaaaaaaaaaaaaaaaaaaaaaa");}, child:Text("GO Back")),
            Text("${Get.arguments}")
          ],
        ),
      ),
    );
  }
}
