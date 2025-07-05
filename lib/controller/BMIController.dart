import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';

class BmiController extends GetxController{
  RxString Gender = "MALE".obs;
  RxInt Weight = 12.obs;
  RxInt Age = 12.obs;
  RxDouble Height = 100.0.obs;
  RxString BMI = "".obs;
  RxDouble tempBMI = 0.0.obs;
  RxString BMIstatus = "".obs;
  Rx<Color> colorStatus = Color(0xff246AFE).obs;



  void genderHandle(String gender){
    Gender.value = gender;

  }
  void CalculatBMI() {
    var Hmeter = Height/100;
    tempBMI.value = Weight / (Hmeter*Hmeter);
    BMI.value = tempBMI.toStringAsFixed(1);
    tempBMI.value = double.parse(BMI.value);
    findStatus();
    print(BMI);
  }

  void findStatus()
  {
    if(tempBMI.value <18.5)
    {
      BMIstatus.value = "UnderWeight";
      colorStatus.value = Color(0xffFFB800);
    }
    if(tempBMI.value >18.5 && tempBMI.value <24.9 )
    {
      BMIstatus.value = "Normal";
      colorStatus.value = Color(0xff00CA39);
    }
    if(tempBMI.value >25.0 && tempBMI.value <29.9 )
    {
      BMIstatus.value = "OverWeight";
      colorStatus.value = Color(0xffFF5858);
    }
    if(tempBMI.value >30.0 && tempBMI.value <34.9 )
    {
      BMIstatus.value = "OBESE";
      colorStatus.value = Color(0xffFF0000);
    }
    if(tempBMI.value > 35.0)
    {
      BMIstatus.value = "Extremely OBESE";

      colorStatus.value = Color(0xff000000);
    }
  }
}