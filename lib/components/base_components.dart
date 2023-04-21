

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../AHD.dart';

class A6DComponents{

  TextField field({required TextEditingController controller,bool isPass = false,String hint=""}){
    return TextField(
      controller: controller,
      obscureText: isPass,
      textAlign: TextAlign.right,
      style: AhdFonts.style5(),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        filled: true,
        hintText: hint,
        hintStyle: AhdFonts.style5(fontColor: Colors.grey),
        fillColor: AhdColors.white,
        focusColor:AhdColors.white ,
        hoverColor: AhdColors.white,
        focusedBorder: _fieldBorder(),
        enabledBorder: _fieldBorder(),
        errorBorder: _fieldBorder(),
        disabledBorder: _fieldBorder(),
      ),
    );
  }


  _fieldBorder(){
    return UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(5.0),
    );
  }

  Widget button({required Function()? onTap}){
     return GestureDetector(
       onTap: onTap,
        child:  Container(
          width: Get.width * 0.30,
            decoration: BoxDecoration(
                color: AhdColors.main,
                borderRadius: const BorderRadius.all(Radius.circular(5.0))
          ),
          padding: const EdgeInsets.all(8.0),
          child:Center(
            child: Text(
                "تسجيل دخول",
                style:AhdFonts.style5(
                    fontColor:AhdColors.white
                )
            ),
          ),
        ),
     );
  }

}