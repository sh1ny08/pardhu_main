import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(.5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //title
              Text(
                "Portfoliator",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 30,
                ),
              ),
              SizedBox(height:5),

              //Subheading
              Text(
                "Take pride in how far you've come",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 17.5,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'CanvaSans',
                ),
              ),




            ],
          ),
        ),
      )
    );
  }
}
