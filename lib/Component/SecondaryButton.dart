import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final IconData icon;
  final String btnName;
  final VoidCallback onPress;
  const SecondaryButton({super.key, required this.icon, required this.btnName, required this.onPress});

  @override
  Widget build(BuildContext context) {

    return InkWell(
        onTap: onPress,
        child: Container(
          padding: EdgeInsets.all(10),
          height: 50,
          decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.primary
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,
                  color: Theme.of(context).colorScheme.primaryContainer),
              SizedBox(width: 10,),
              Text(btnName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,
                  color: Theme.of(context).colorScheme.primaryContainer),)


            ],
          ),

        ),
    );
  }
}
