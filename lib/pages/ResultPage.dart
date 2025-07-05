import 'package:bmi_calculator/Component/SecondaryButton.dart';
import 'package:bmi_calculator/controller/BMIController.dart';
import 'package:bmi_calculator/pages/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    BmiController bmiConroller = Get.put(BmiController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back_ios_new,size: 30,),
                  Text('Back')
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Your BMI Is',
                  style: TextStyle(
                    fontSize: 28,
                    color: bmiConroller.colorStatus.value,
                    fontWeight: FontWeight.bold,


                  ),),
                ],
              ),
              SizedBox(height: 80,),
              Container(height: 350,
                child: Expanded(
                  child: new CircularPercentIndicator(
                    animationDuration: 1000,
                    footer: Text('${bmiConroller.BMIstatus.value}',
                    style: TextStyle(fontSize: 35,color:bmiConroller.colorStatus.value,fontWeight: FontWeight.bold),),
                    radius: 150,
                    lineWidth: 30,
                    percent: bmiConroller.tempBMI.value/100,


                    animation: true,
                    circularStrokeCap: CircularStrokeCap.round,
                    center: Text("${bmiConroller.BMI.value}",style:TextStyle(
                      color: bmiConroller.colorStatus.value,
                      fontSize: 60,
                      fontWeight: FontWeight.bold
                    ),),
                    progressColor:bmiConroller.colorStatus.value,
                    backgroundColor:bmiConroller.colorStatus.value.withValues(alpha: 0.2),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(15)
                ),
                padding: EdgeInsets.all(10),
                child: Text('Your BMI is ${bmiConroller.BMI.value}, indicating your weight is in the ${bmiConroller.BMIstatus.value} category for adults of your height.  For your height, a normal weight range would be from 53.5 to 72 kilograms.Maintaining a healthy weight may reduce the risk of chronic diseases associated with overweight and obesity.',
                style: TextStyle(
                  fontSize: 20
                ),)
              ),
              SizedBox(height: 11,),
              SecondaryButton(icon: Icons.arrow_back_ios_new, btnName: "Find Out More", onPress:(){
                Get.back();
              })

            ],
          ),
        ),
      ),
    );
  }
}
