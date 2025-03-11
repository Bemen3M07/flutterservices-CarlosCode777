import 'package:flutter/material.dart';  // Se importa el paquete de Flutter para crear la interfaz de usuario
import 'package:provider/provider.dart';  // Se importa el paquete provider para gestionar el estado de la aplicación
import 'Provider/acudit_provider.dart';  // Se importa el proveedor que gestiona la lógica de obtener un chiste
import 'Home/home_screen.dart';  // Se importa la pantalla principal (HomeScreen) que contiene la UI

// Función principal que se ejecuta al iniciar la aplicación
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AcuditProvider(),  // Proveedor de estado para gestionar el chiste
      child: MyApp(),  // El widget principal de la aplicación
    ),
  );
}

// MyApp es un StatelessWidget que define la estructura de la aplicación
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Acudit Aleatori',  // Título de la aplicación
      theme: ThemeData(
        primarySwatch: Colors.blue,  // Color principal de la aplicación
      ),
      home: HomeScreen(),  // La pantalla inicial de la aplicación, que es HomeScreen
    );
  }
}
