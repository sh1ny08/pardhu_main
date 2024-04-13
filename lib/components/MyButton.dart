import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       width: 350,
       height: 50,
       decoration: BoxDecoration(
         color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
       ),
       child: Text(
           "Get Started",
           style: Theme.of(context).textTheme.titleMedium,
       )
    );
  }
}
