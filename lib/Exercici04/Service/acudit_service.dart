import 'dart:convert';  // Se importa para poder convertir la respuesta de la API desde JSON
import 'package:http/http.dart' as http;  // Se importa el paquete http para realizar las solicitudes HTTP
import '../Modelo/acudit_model.dart';  // Se importa el modelo AcuditModel para mapear la respuesta de la API

// La clase AcuditService es responsable de interactuar con la API externa para obtener los chistes
class AcuditService {
  // La URL de la API que proporciona los chistes
  final String _serverUrl = "https://api.sampleapis.com/jokes/goodJokes";  // URL correcta de la API
  
  // Método para obtener un chiste de la API
  Future<AcuditModel> getAcudit() async {
    // Realiza una solicitud HTTP GET a la API
    var response = await http.get(Uri.parse(_serverUrl));

    // Verifica si la respuesta fue exitosa (status 200)
    if (response.statusCode == 200) {
      // Si la respuesta es exitosa, se decodifica el cuerpo de la respuesta (que es JSON)
      List<dynamic> chistesList = json.decode(response.body);  // Decodificar la respuesta JSON
      
      // Se mezcla (shuffle) la lista de chistes y se obtiene un chiste aleatorio
      var randomChiste = (chistesList..shuffle()).first;
      
      // Convierte el chiste seleccionado en un objeto AcuditModel usando el método fromMap
      return AcuditModel.fromMap(randomChiste);  // Convertir el JSON a un modelo de Acudit
    } else {
      // Si la respuesta no es exitosa, se lanza una excepción
      throw Exception('Error al obtener chiste');
    }
  }
}
