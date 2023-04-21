
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with StateMixin{

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  RxBool remember  = true.obs;

  void isCheck(){
     remember.value = !remember.value;
  }

}