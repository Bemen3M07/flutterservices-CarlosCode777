import 'package:empty/Exercici02/home_screen.dart';
import 'package:empty/Exercici02/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(

    ChangeNotifierProvider(
      
      create: (_) => CounterProvider(),
      child: const MainApp(),
      
      )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Uso Provider',

      theme: ThemeData(

        primarySwatch: Colors.deepOrange,

      ),

      home: HomeScreen(),
    );
  }
}

