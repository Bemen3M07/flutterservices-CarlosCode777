import '../model/car_model.dart';
import 'package:http/http.dart' as http;
// import 'package:rentcar/model/brand_model.dart';
// import 'package:rentcar/model/car_model.dart';
// import 'package:rentcar/utils/const_app.dart';

class CarHttpService {
  final String _serverUrl = "https://car-data.p.rapidapi.com/cars?limit=10&page=0";
  final String _headerKey = "857f4d0647msh881d49c5ef1fc50p14c664jsna8005123d4c2";
  final String _headerHost = "car-data.p.rapidapi.com";

  Future<List<CarsModel>> getCars() async {
    var uri = Uri.parse("$_serverUrl/cars"); 

    var response = await http.get(uri, headers: {
      "x-rapidapi-key": _headerKey, 
      "x-rapidapi-host":
          _headerHost
    });

    //Control d'errors. Si la resposta és 200, tot ha anat bé.  Si nó, llancem un error
    if (response.statusCode == 200) {
      return carsModelFromJson(response.body);
    } else {
      throw ("Error al obtenir la llista de cotxes: ${response.statusCode}");
    }
  }

  //DOCUMENTAR

//   Future<List<String>> getBrand() async {
//     var uri = Uri.parse(_serverUrl + endPointCars);
//     var response = await http.get(uri,
//         headers: {
//           _headerKey: _headerKey,
//           _headerHost : _headerHost
//         });
//
//     if(response.statusCode == 200){
//       return carsModelFromJson(response.body);
//     }else{
//       throw(messageErrorCarsApi);
//     }
//   }
//   
}
