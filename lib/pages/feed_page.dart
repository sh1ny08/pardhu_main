// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:pardhu_main/components/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/carousel.dart';
import '../components/nav_bar.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
          ),
          scrolledUnderElevation: 0,
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: false,
          toolbarHeight: 40,
          title: Row(
            children: [
              SizedBox(width: 8,),
              Text(
                'Portfoliator',
                style: GoogleFonts.dmSerifDisplay(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          ],
        ),
      )
    );
  }
}
