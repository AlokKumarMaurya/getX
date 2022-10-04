import 'dart:html';

import 'package:get/get.dart';

class AllControllerBinding implements Bindings
{
@override 
void dependencies()
{
Get.lazyPut(() => MyController());
Get.lazyPut(() => HomeController());
}
}