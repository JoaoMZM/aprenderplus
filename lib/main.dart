import 'dart:async';
import 'package:aprenderplus/data/constants.dart';
import 'package:aprenderplus/views/pages/login_page.dart';
import 'package:aprenderplus/views/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors().mainTheme,
          brightness: Brightness.light,
        ),
      ),
      home: SplashPage(),
    );
  }
}
