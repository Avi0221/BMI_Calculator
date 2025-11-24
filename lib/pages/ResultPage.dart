import 'package:bmi_calculator/Component/SecondaryButton.dart';
import 'package:bmi_calculator/controller/BMIController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    BmiController bmiController = Get.find<BmiController>();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ---------- BACK BUTTON ----------
              GestureDetector(
                onTap: () => Get.back(),
                child: Row(
                  children: const [
                    Icon(Icons.arrow_back_ios_new, size: 30),
                    SizedBox(width: 5),
                    Text("Back", style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ---------- HEADING ----------
              Text(
                "Your BMI Is",
                style: TextStyle(
                  fontSize: 28,
                  color: bmiController.colorStatus.value,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 60),

              // ---------- BMI CIRCLE ----------
              Center(
                child: CircularPercentIndicator(
                  animationDuration: 1000,
                  radius: 150,
                  lineWidth: 30,
                  percent: bmiController.tempBMI.value / 100,
                  animation: true,
                  circularStrokeCap: CircularStrokeCap.round,

                  center: Text(
                    bmiController.BMI.value,
                    style: TextStyle(
                      color: bmiController.colorStatus.value,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  footer: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      bmiController.BMIstatus.value,
                      style: TextStyle(
                        fontSize: 35,
                        color: bmiController.colorStatus.value,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  progressColor: bmiController.colorStatus.value,
                  backgroundColor:
                  bmiController.colorStatus.value.withOpacity(0.2),
                ),
              ),

              const SizedBox(height: 25),

              // ---------- DESCRIPTION BOX ----------
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(12),
                child: Text(
                  "Your BMI is ${bmiController.BMI.value}, indicating your weight is in the ${bmiController.BMIstatus.value} category for adults of your height. A normal weight range would be 53.5 to 72 kg. Maintaining a healthy weight may reduce the risk of chronic diseases associated with overweight and obesity.",
                  style: const TextStyle(fontSize: 18),
                ),
              ),

              const SizedBox(height: 15),

              // ---------- BUTTON ----------
              SecondaryButton(
                icon: Icons.arrow_back_ios_new,
                btnName: "Find Out More",
                onPress: () => Get.back(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
