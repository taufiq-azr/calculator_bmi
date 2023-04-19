import 'dart:async';
import 'package:calculator_bmi/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.toNamed(Routes.HOME);
    });
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset('lib/assets/icon.png'),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: const Text(
                'BMI CALCULATOR',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: const Text(
                'By Taufiq Al Azhar',
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 8, fontWeight: FontWeight.w500),
              ),
            ),
            const Expanded(
              flex: 1,
              child: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
