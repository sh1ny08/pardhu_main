import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 34, 34, 34),
      body: Container(
        width: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>[

                      Text("Get Started",style:Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text("A New Journey Waiting to Commence",style:Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'CanvaSans',
                        ),
                      ),

                    ],
                  ),
                ),

                Center(
                  child: Image(
                    image: AssetImage(
                        'assets/view.png',
                    ),
                    height: 300,
                  ),
                ),

              SizedBox(height: 10),

              Expanded(
                child: Container(
                  decoration:BoxDecoration(
                    color: Theme.of(context).colorScheme.primary.withOpacity(.5),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                    ),
                  ),

                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child:Column(
                       children: <Widget>[
                         SizedBox(height:20),
                         Container(
                           height: 50,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(50),
                             color: Theme.of(context).colorScheme.secondary.withOpacity(.25),
                             boxShadow: [BoxShadow(
                                 color: Theme.of(context).colorScheme.secondary.withOpacity(.25),
                                 blurRadius: 10,
                               ),
                             ],
                           ),
                           child: Center(
                             child: Text(
                               'Log in with Google',
                               style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                 fontSize: 20,
                                 fontFamily: 'Canva Sans',
                               ),
                             ),
                           ),
                         ),
                         SizedBox(height:30),

                         Row(
                           children: <Widget>[
                             Expanded(
                               child: Container(
                                 height: 50,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(50),
                                   color: Theme.of(context).colorScheme.secondary.withOpacity(.25),
                                   boxShadow: [BoxShadow(
                                      color: Theme.of(context).colorScheme.secondary.withOpacity(.25),
                                      blurRadius: 10,
                                    ),
                                   ],
                                 ),
                                 child: Center(
                                   child: Text(
                                     'Sign in with Google',
                                     style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                       fontSize: 20,
                                       fontFamily: 'Canva Sans',
                                     ),
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ],
                    ),
                  ),


                ),
              )
            ]
        ),
      )
    );
  }
}
