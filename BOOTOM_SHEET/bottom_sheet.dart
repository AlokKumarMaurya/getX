import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Bottom_sheet extends StatelessWidget {
  const Bottom_sheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){Get.bottomSheet(

            Container(
              child: Wrap(
                children: [
                  ListTile(leading: Icon(Icons.light_mode),title: Text("Light theme"),onTap: ()=>Get.changeTheme(ThemeData.light()),),




                  ListTile(leading: Icon(Icons.dark_mode),title: Text("Dark theme"),onTap: ()=>Get.changeTheme(ThemeData.dark()),),

                ],
              ),
            ),
            isDismissible: true
          );}, child:Text('Bottom Sheet'))
        ],
      ),
    );
  }
}
