import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/car_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Coches'),
      ),
      body: FutureBuilder(
        // Llama al método fetchCars del CarProvider para obtener los datos de los coches
        future: context.read<CarProvider>().fetchCars(),  
        builder: (context, snapshot) {
          // Muestra un indicador de carga mientras se esperan los datos
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } 
          // Si ocurre un error, muestra un mensaje con el error
          else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } 
          // Si los datos se obtienen correctamente, muestra la lista de coches
          else {
            // Obtiene la lista de coches desde el CarProvider
            final cars = context.watch<CarProvider>().cars;  
            return ListView.builder(
              itemCount: cars.length,  // Número de coches en la lista
              itemBuilder: (context, index) {
                final car = cars[index];  // Coche en la posición actual
                return ListTile(
                  title: Text('${car.make} ${car.model}'),  // Muestra la marca y el modelo del coche
                  subtitle: Text('Año: ${car.year}'),  // Muestra el año del coche
                  leading: Icon(Icons.car_repair),  // Ícono representativo de un coche
                );
              },
            );
          }
        },
      ),
    );
  }
}
