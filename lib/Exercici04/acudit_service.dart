import 'dart:convert';
import 'package:http/http.dart' as http;
import 'acudit_model.dart';

class AcuditService {
  final String _serverUrl = "https://api.sampleapis.com/jokes/goodJokes";  // URL correcta de la API
  
  Future<AcuditModel> getAcudit() async {
    var response = await http.get(Uri.parse(_serverUrl));

    if (response.statusCode == 200) {
      List<dynamic> chistesList = json.decode(response.body);  // Decodificar la respuesta JSON
      // Obtener un chiste aleatorio de la lista
      var randomChiste = (chistesList..shuffle()).first;
      return AcuditModel.fromMap(randomChiste);  // Convertir el JSON a un modelo de Acudit
    } else {
      throw Exception('Error al obtener chiste');
    }
  }
}

