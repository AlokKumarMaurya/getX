class TestGetxController extends GetxController{

  RxInt temp=0.obs;
  
onInit(){
  ever(temp,func());    //now any time the value of temp changes anywhere in the whole app then this func() will be called
}
  
  func(){
  print("function is called on value changes");
  }
}
