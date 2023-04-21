import 'package:flutter/material.dart';
import 'package:gemstone_dashboard/view/home_view.dart';
import 'package:gemstone_dashboard/view/panel.dart';
import 'package:get/get.dart';

import 'view/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),// ,
    );
  }
}
