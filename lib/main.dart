import 'package:flutter/material.dart';
import 'package:social_media_marketing/src/views/login_views/login_screen.dart';
import 'package:social_media_marketing/src/views/splash_views/Logo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LogoScreen(),
    );
  }
}

