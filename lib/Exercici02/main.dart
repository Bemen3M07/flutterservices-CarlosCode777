import 'package:empty/Exercici02/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Uso Provider',

      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),

      home: HomeScreen(),
    );
  }
}