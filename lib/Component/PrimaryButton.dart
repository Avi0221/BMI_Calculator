import 'package:bmi_calculator/controller/BMIController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  PrimaryButton extends StatelessWidget {
  final IconData icon;
  final String btnName;
  final VoidCallback onPress;
  const PrimaryButton ({super.key, required this.icon, required this.btnName, required this.onPress, });

  @override
  Widget build(BuildContext context) {
    BmiController bmiController=Get.put(BmiController());
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Obx(() => Container(
          padding: EdgeInsets.all(10),
          height: 50,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(10),
            color: bmiController.Gender.value == btnName?
            Theme.of(context).colorScheme.primary:
            Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,
                  color: bmiController.Gender.value == btnName?
                  Theme.of(context).colorScheme.primaryContainer:
                  Theme.of(context).colorScheme.primary,),
              SizedBox(width: 10,),
              Text(btnName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,
                  color: bmiController.Gender.value == btnName?
                  Theme.of(context).colorScheme.primaryContainer:
                  Theme.of(context).colorScheme.primary,
                  letterSpacing: 1.5),),


            ],
          ),

        ),)
      ),
    );
  }
}
