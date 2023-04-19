import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/home_view.dart';

enum Gender {
  male,
  female,
}

class HomeController extends GetxController {
  Rx<Color> maleCardColor = inactiveCardColour.obs;
  Rx<Color> demaleCardColor = inactiveCardColour.obs;

  var numSlider = 120.obs;
  final count = 0.obs;
  RxInt weight = 32.obs;
  RxInt Age = 8.obs;
  RxDouble bmi = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void UpWeight() {
    weight.value++;
    calc_bmi();
  }

  void DownWeight() {
    weight.value--;
    calc_bmi();
  }

  void UpAge() {
    Age.value++;
    calc_bmi();
  }

  void DownAge() {
    Age.value--;
    calc_bmi();
  }

  String calc_bmi() {
    bmi.value = (weight.value / pow(numSlider.value / 100, 2));
    print('dibawah nilai bmi');
    print(bmi);
    return bmi.toStringAsFixed(1);
  }

  String getInterpretation() {
    if (bmi.value >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi.value > 18.5 && bmi.value < 25) {
      return 'You have a normal body weight. Good job !';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  String hasilnya() {
    String category = '';
    if (SelectedGender == 'Male') {
      if (bmi.value >= 30) {
        return 'obese';
      } else if (bmi.value >= 25 && bmi.value < 29.9) {
        return 'Overweight';
      } else if (bmi.value > 18.5 && bmi.value < 25) {
        return 'Normal';
      } else {
        return 'Underweight';
      }
    } else if (SelectedGender == 'Female') {
      if (bmi.value >= 30) {
        return 'obese';
      } else if (bmi.value >= 24 && bmi.value < 29.9) {
        return 'Overweight';
      } else if (bmi.value > 18.5 && bmi.value < 24) {
        return 'Normal';
      } else {
        return 'Underweight';
      }
    }
    return category;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void updateSlider(double newValue) {
    numSlider.value = newValue.round();
    calc_bmi();
  }

  // ignore: non_constant_identifier_names
  void updateColour(Gender SelectedGender) {
    if (SelectedGender == Gender.male) {
      if (maleCardColor.value == inactiveCardColour) {
        maleCardColor.value = activeCardColour;
        demaleCardColor.value = inactiveCardColour;
      } else {
        maleCardColor.value = inactiveCardColour;
      }
    }
    if (SelectedGender == Gender.female) {
      if (demaleCardColor.value == inactiveCardColour) {
        demaleCardColor.value = activeCardColour;
        maleCardColor.value = inactiveCardColour;
      } else {
        demaleCardColor.value = inactiveCardColour;
      }
    }

    void increment() => count.value++;
  }
}
