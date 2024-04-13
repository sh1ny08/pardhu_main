import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pardhu_main/app_colors.dart';
import 'package:pardhu_main/pages/comment_section.dart';
import 'package:pardhu_main/pages/hero.dart';
import 'package:pardhu_main/pages/home_page.dart';
import 'package:pardhu_main/pages/tab_item.dart';
import 'package:pardhu_main/pages/following.dart';
import 'package:pardhu_main/services/firebase/auth_service.dart';
import 'package:pardhu_main/services/firebase/firestore/db.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

UserData currentUser = UserData.empty();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final fbu = FirebaseAuth.instance.currentUser;
  if(fbu != null){
    currentUser = (await UserData.fromId(fbu.uid))!;
  }
}

const backgroundColor = Color.fromARGB(255, 34, 34, 34);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      darkTheme: darkMode,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const Following(),
      routes: {
        '/home': (context) => const HomePage(),
        '/view-profile': (context) => const Scaffold(),
        '/comment-section': (context) => const CommentSection(postID: ""),
      },
    );
  }
}