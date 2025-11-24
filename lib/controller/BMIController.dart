import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BmiController extends GetxController {

  // Observable variables
  RxString Gender = "MALE".obs;
  RxInt Weight = 60.obs;
  RxInt Age = 20.obs;
  RxDouble Height = 170.0.obs;

  RxString BMI = "".obs;
  RxDouble tempBMI = 0.0.obs;

  RxString BMIstatus = "".obs;
  Rx<Color> colorStatus = const Color(0xff246AFE).obs;


  // Update gender
  void genderHandle(String gender) {
    Gender.value = gender;
  }


  // BMI Calculation
  void CalculatBMI() {
    double heightMeter = Height.value / 100;

    double bmi = Weight.value / (heightMeter * heightMeter);

    BMI.value = bmi.toStringAsFixed(1);
    tempBMI.value = bmi;

    findStatus();
  }


  // Detect BMI Status
  void findStatus() {
    double bmi = tempBMI.value;

    if (bmi < 18.5) {
      BMIstatus.value = "Underweight";
      colorStatus.value = const Color(0xffFFB800);
    }
    else if (bmi >= 18.5 && bmi <= 24.9) {
      BMIstatus.value = "Normal";
      colorStatus.value = const Color(0xff00CA39);
    }
    else if (bmi >= 25 && bmi <= 29.9) {
      BMIstatus.value = "Overweight";
      colorStatus.value = const Color(0xffFF5858);
    }
    else if (bmi >= 30 && bmi <= 34.9) {
      BMIstatus.value = "Obese (Class I)";
      colorStatus.value = const Color(0xffFF0000);
    }
    else if (bmi >= 35) {
      BMIstatus.value = "Extremely Obese";
      colorStatus.value = const Color(0xff000000);
    }
  }
}
