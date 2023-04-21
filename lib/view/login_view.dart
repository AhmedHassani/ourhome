import 'package:flutter/material.dart';
import 'package:gemstone_dashboard/service/login_controller.dart';
import 'package:get/get.dart';
import '../AHD.dart';


class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    //display increment with getx

    return Scaffold(
      backgroundColor: AhdColors.background ,
      body: Center(
        child: Container(
          height: Get.size.height * 0.80,
          width: Get.size.width * 0.75,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Image.asset("images/img.png",height: Get.size.height*0.25,width: Get.size.width*0.25,),
               Text(
                   "أهلا بكم في لوحة تحكم الأحجار الكريمة يرجى إدخال اسم المستخدم وكلمة المرور",
                   textAlign: TextAlign.center,
                   style: AhdFonts.style1(),
               ),
              const SizedBox(
                height: 15,
              ),
              a6dComponents.field(
                controller: controller.username,
                hint: "اسم المستخدم"
              ),
              const SizedBox(
                height: 15,
              ),
              a6dComponents.field(
                  controller: controller.password,
                  hint: "كلمة المرور",
                  isPass:true,
              ),
              const SizedBox(
                height: 3,
              ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(
                       "هل نسيت كلمة المرور؟",
                       style:AhdFonts.style6(
                           fontColor:AhdColors.main
                       )
                   ),
                   Row(
                     children: [
                       Text(
                           "تذكرني",
                           style:AhdFonts.style6(
                           )
                       ),
                       Obx(() => Checkbox(
                           checkColor: AhdColors.white,
                           activeColor: AhdColors.main,
                           value: controller.remember.value,
                           onChanged: (value){
                             controller.isCheck();
                           }
                       )),

                     ],
                   ),
                 ],

               ),
              const SizedBox(
                height: 25,
              ),
              a6dComponents.button(onTap: () {

              }),
            ],
          ),
        ),
      ),
    );
  }
}
