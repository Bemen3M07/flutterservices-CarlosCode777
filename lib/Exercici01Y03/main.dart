import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/car_provider.dart';
import 'page/home_screen.dart';

void main() {
  // Configura el ChangeNotifierProvider para que el CarProvider esté disponible en toda la aplicación
  runApp(
    ChangeNotifierProvider(
      create: (_) => CarProvider(),  // Crea una instancia de CarProvider
      child: const MyApp(),  // Arranca la aplicación
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // Desactiva el banner de depuración
      title: 'Car App',  // Título de la aplicación
      theme: ThemeData(
        primarySwatch: Colors.blue,  // Color primario de la app
      ),
      home: HomeScreen(),  // Pantalla principal
    );
  }
}

