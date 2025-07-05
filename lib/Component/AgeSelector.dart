import 'package:bmi_calculator/Component/SecBtn.dart';
import 'package:bmi_calculator/controller/BMIController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgeSelector extends StatelessWidget {
  const AgeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    BmiController bmiController = Get.put(BmiController());
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(10)
      ),

      height: 220,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Age',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Theme.of(context).colorScheme.onSecondaryContainer),),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text('${bmiController.Age.value}',style: TextStyle(fontSize: 70,fontWeight: FontWeight.w500,color: Theme.of(context).colorScheme.onPrimaryContainer),),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SecBtn(onpress: () {
                  bmiController.Age.value--;
                },icon: Icons.minimize,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SecBtn(onpress: (){
                  bmiController.Age.value++;
                }, icon: Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}
