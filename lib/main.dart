import 'package:flutter/material.dart';
import 'package:icr_church/pages/first_load/first_load_page.dart';
import 'package:icr_church/pages/first_load/welcome_screen_page.dart';
import 'package:icr_church/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const WelcomeScreenPage(),
    );
  }
}
