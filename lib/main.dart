import 'package:employee_figma/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:employee_figma/bottombar.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner:false,home: Bottomnav());
  }
  }