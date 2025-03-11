
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
        future: context.read<CarProvider>().fetchCars(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final cars = context.watch<CarProvider>().cars;
            return ListView.builder(
              itemCount: cars.length,
              itemBuilder: (context, index) {
                final car = cars[index];
                return ListTile(
                  title: Text('${car.make} ${car.model}'),
                  subtitle: Text('Año: ${car.year}'),
                  leading: Icon(Icons.car_repair),
                );
              },
            );
          }
        },
      ),
    );
  }
}
