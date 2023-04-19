import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
        title: "Application",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: ThemeData(
          primaryColor: HexColor('#101639'),
          scaffoldBackgroundColor: HexColor('#101639'),
          accentColor: Colors.purple,
          textTheme: const TextTheme(
              bodyMedium: TextStyle(
            color: Colors.white,
          )),
        )),
  );
}
