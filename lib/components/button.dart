import 'package:flutter/material.dart';
import '../AHD.dart';


class ButtonAppar extends StatelessWidget {
  void Function()? onTap;
  IconData? icon;
  ButtonAppar({Key? key,required this.onTap,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 45,
        height: 40,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: AhdColors.background,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(3),
              topLeft: Radius.circular(12) ,
              topRight:  Radius.circular(3),
              bottomRight: Radius.circular(12),
            )),
        child: Center(
           child: Icon(
             icon,
             color: AhdColors.secondary,
           ),
        ),
      ),
    );
  }
}
