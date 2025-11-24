import 'package:bmi_calculator/Component/AgeSelector.dart';
import 'package:bmi_calculator/Component/HeightSelector.dart';
import 'package:bmi_calculator/Component/PrimaryButton.dart';
import 'package:bmi_calculator/Component/SecondaryButton.dart';
import 'package:bmi_calculator/Component/ThemeChangeBtn.dart';
import 'package:bmi_calculator/Component/WeightSelector.dart';
import 'package:bmi_calculator/controller/BMIController.dart';
import 'package:bmi_calculator/controller/ThemeController.dart';
import 'package:bmi_calculator/pages/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  final ThemeController themeController = Get.put(ThemeController());
  final BmiController bmiController = Get.put(BmiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [

              Themechangebtn(),

              Row(
                children: [
                  Text(
                    'Welcome 😊',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.onSecondaryContainer),
                  ),
                ],
              ),

              Row(
                children: [
                  Text(
                    'BMI Calculator',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  )
                ],
              ),

              SizedBox(height: 20),

              Row(
                children: [
                  PrimaryButton(
                    icon: Icons.male,
                    btnName: 'MALE',
                    onPress: () {
                      bmiController.genderHandle('MALE');
                    },
                  ),
                  SizedBox(width: 20),
                  PrimaryButton(
                    icon: Icons.female,
                    btnName: 'FEMALE',
                    onPress: () {
                      bmiController.genderHandle('FEMALE');
                    },
                  )
                ],
              ),

              SizedBox(height: 20),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Heightselector(),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Weightselector(),
                          SizedBox(height: 30),
                          AgeSelector(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              SizedBox(
                height: 50,
                child: SecondaryButton(
                  icon: Icons.done,
                  btnName: "Let's Calculate",
                  onPress: () {
                    bmiController.CalculatBMI();   // ✔ calculate first
                    Get.to(ResultPage());          // ✔ then go to result page
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
