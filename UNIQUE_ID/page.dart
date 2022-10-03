import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';



class Unique_id extends StatelessWidget {
  // const Unique_id({super.key});
MyController myController=Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Column(
        children: [
          GetBuilder<MyController>(
            id: "a",
            builder: (controller){
              return Text("${myController.count}");
            
            },
          ),
          ElevatedButton(onPressed: (){myController.increment();}, child:Text("Button"))
        ],
      )),
    );
  }
}








class MyController extends GetxController
{
  var count =0;
  void increment()
  {
    count++;
    update(["a"]);
  }
}