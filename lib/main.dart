import 'package:flutter/material.dart';
import 'dart:async';

import 'ui/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  git init
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App UI',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
