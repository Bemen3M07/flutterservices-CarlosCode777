
import 'package:flutter/material.dart';
import '../data/car_http_service.dart';
import '../model/car_model.dart';

class CarProvider with ChangeNotifier {
  List<CarsModel> _cars = [];

  List<CarsModel> get cars => _cars;

  Future<void> fetchCars() async {
    try {
      _cars = await CarHttpService().getCars();
      notifyListeners();  // Notifica a los widgets que escuchan
    } catch (e) {
      print("Error al obtener coches: $e");
    }
  }
}
