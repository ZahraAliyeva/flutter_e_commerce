import 'package:flutter/material.dart';
import 'package:flutter_clothes/account.dart';
import 'package:flutter_clothes/back.dart';
import 'package:flutter_clothes/home.dart';
import 'package:flutter_clothes/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BackPage(),
    );
  }
}