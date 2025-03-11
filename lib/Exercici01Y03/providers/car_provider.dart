import 'package:flutter/material.dart';
import '../data/car_http_service.dart';
import '../model/car_model.dart';

class CarProvider with ChangeNotifier {
  // Lista privada de coches
  List<CarsModel> _cars = [];  

  // Getter público para acceder a la lista de coches
  List<CarsModel> get cars => _cars;  

  // Método asincrónico que obtiene la lista de coches desde la API
  Future<void> fetchCars() async {
    try {
      // Llama al servicio HTTP para obtener los coches
      _cars = await CarHttpService().getCars();  
      notifyListeners();  // Notifica a los widgets que escuchan este Provider
    } catch (e) {
      // Captura y muestra cualquier error que ocurra durante la obtención de los coches
      print("Error al obtener coches: $e");
    }
  }
}
