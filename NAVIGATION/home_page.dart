import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/NAVIGATION/second_page.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: ()async{
              var aa=await Get.to(SecondPage());
              print("data from the second page $aa");
              // Get.to(SecondPage(),arguments: "This is from the main page");
              }, child:Text("GO to next Page"))
          ],
        ),
      ),
    );
  }
}
