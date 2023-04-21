import 'dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fonts {

  TextStyle style1({color=Colors.black}){
    return GoogleFonts.cairo(
      fontSize: Dimensions().fontSize1(),
      fontStyle: FontStyle.normal,
      color: color
    );
  }
  TextStyle style2({color=Colors.black}){
    return GoogleFonts.cairo(
        fontSize: Dimensions().fontSize2(),
        fontStyle: FontStyle.normal,
        color: color
    );
  }

  TextStyle style5_5({fontColor = Colors.black}){
    return GoogleFonts.cairo(
        fontSize: 13,
        color: fontColor,
        fontStyle: FontStyle.normal
    );
  }

  TextStyle style5({fontColor = Colors.black}){
    return GoogleFonts.cairo(
        fontSize: 14,
        color: fontColor,
        fontStyle: FontStyle.normal
    );
  }

  TextStyle style6({fontColor = Colors.black}){
    return GoogleFonts.cairo(
      fontSize: 10,
      color: fontColor,
      fontStyle: FontStyle.italic
    );
  }

  style3({color=Colors.black}) {
    return GoogleFonts.cairo(
        fontSize: Dimensions().fontSize3(),
        fontStyle: FontStyle.normal,
        color: color
    );
  }


}