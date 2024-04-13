import 'package:flutter/material.dart';
import 'package:pardhu_main/intro_screens/intro_page_1.dart';
import 'package:pardhu_main/intro_screens/intro_page_2.dart';
import 'package:pardhu_main/intro_screens/intro_page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../components/MyButton.dart';

class HeroPage extends StatefulWidget {
  const HeroPage({Key? key}) : super(key: key);
  @override
  _HeroPageState createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          //page view
          PageView(
            controller:_controller,
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),

          Container(
            alignment: Alignment(0.1,0.9),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ScaleEffect(
                activeDotColor: Theme.of(context).colorScheme.primary.withOpacity(0.5),
              ),
            ),
          ),

      /*
      Positioned(
        left: 80,
        bottom: 10,
        child: Container(
            width:250,
            height:50,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                "Next",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            )
        ),
      ),
       */



        ],
      ),
    );
  }
}
