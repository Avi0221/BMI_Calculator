import 'package:bmi_calculator/controller/BMIController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Heightselector extends StatelessWidget {
  const Heightselector({super.key});

  @override
  Widget build(BuildContext context) {
    BmiController bmiController = Get.put(BmiController());
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).colorScheme.primaryContainer
        ),
        child: Column(
          children: [
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Height (Cm)',
                    style:TextStyle(fontSize: 15,color: Theme.of(context).colorScheme.onSecondaryContainer) ,),
                )
              ],
            ),
            Expanded(
              child: Obx(() => SfSlider.vertical(
                min: 50,
                max: 250,
                value: bmiController.Height.value,
                interval: 25,
                showTicks: true,
                showLabels: true,
                enableTooltip: true,
                minorTicksPerInterval: 5,
                activeColor: Theme.of(context).colorScheme.primary,
                inactiveColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                onChanged: (dynamic value) {
                  bmiController.Height.value = value;

                },
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
