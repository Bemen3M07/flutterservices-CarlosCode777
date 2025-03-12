// Importamos el servicio que queremos probar, que se encuentra en la carpeta `data` dentro del proyecto.
import '../../lib/Exercici01Y03/data/car_http_service.dart';

// Importamos el paquete de pruebas de Flutter, que nos permitirá escribir y ejecutar tests.
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Agrupamos las pruebas dentro de un `group`, lo que nos permite organizarlas mejor.
  group('CarsApi', () {
    
    // Definimos una prueba con el nombre 'get cars'
    test('get cars', () async {
      // Creamos una instancia del servicio de coches.
      final carHttpService = CarHttpService();
      
      // Llamamos al método `getCars()` para obtener la lista de coches.
      final cars = await carHttpService.getCars();
      
      // Verificamos que la cantidad de coches obtenida sea exactamente 10.
      expect(cars.length, 10);
      
      // Comprobamos que el primer coche de la lista tenga el ID esperado (9582).
      expect(cars[0].id, 9582);
      
      // Verificamos que el último coche en la lista tenga el ID esperado (9591).
      expect(cars[9].id, 9591);
    });
  });
}
