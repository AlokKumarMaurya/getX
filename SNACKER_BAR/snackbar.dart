import 'package:flutter/material.dart';
import 'package:get/get.dart';




class MyApp extends StatelessWidget {
  // const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(
        title: Text("Snackbar"),
      ),

      backgroundColor: Colors.orange,
      body: Center(child: 
      Column(
        children: [
          SizedBox(height: 50,),

          ElevatedButton(onPressed: ()
          {
            Get.showSnackbar(GetSnackBar(
              message: "Show the snackbar at the top",
              snackPosition: SnackPosition.TOP,
              duration: Duration(seconds: 5),
              dismissDirection: DismissDirection.up,
              borderColor: Colors.red,
              borderWidth: 10,
              borderRadius: 12,
              padding: EdgeInsets.only(left: 10,right: 10),
              isDismissible: true,
              icon: Icon(Icons.person,color: Colors.white,size: 50,),
              leftBarIndicatorColor: Colors.yellow,
              // messageText:Text("Good work"),
              onTap: (Value){
                Get.closeCurrentSnackbar();
              },
              progressIndicatorBackgroundColor: Colors.white,
              showProgressIndicator: true,
              snackStyle: SnackStyle.FLOATING,
              title: "Hello",
              

              // maxWidth: 30,
              
            ));
          },
           child:Text("Top")),

SizedBox(height: 100,),




           ElevatedButton(onPressed: ()
           {
            Get.showSnackbar(
              GetSnackBar(
                message: "See at the bottom",
                snackPosition: SnackPosition.BOTTOM,
                duration: Duration(seconds: 5),
                isDismissible: true,
                dismissDirection: DismissDirection.down,
                onTap: (Value){Get.closeCurrentSnackbar();},
              )
            );
           },
            child:Text("Bottom"))
        ],
      ),




      ),
    );
  }
}