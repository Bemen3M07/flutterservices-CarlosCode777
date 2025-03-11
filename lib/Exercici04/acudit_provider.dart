import 'package:flutter/material.dart';
import 'acudit_service.dart';  // Importa el servicio que obtendrá los chistes desde la API
import 'acudit_model.dart';  // Importa el modelo de datos para los chistes

// El AcuditProvider es el encargado de gestionar el estado de los chistes
class AcuditProvider with ChangeNotifier {
  // Propiedad privada que mantiene el estado del chiste actual
  AcuditModel? _acudit;

  // Getter para acceder al chiste actual
  AcuditModel? get acudit => _acudit;

  // Función asincrónica para obtener un nuevo chiste desde la API
  Future<void> fetchNewAcudit() async {
    try {
      // Llama al servicio para obtener un nuevo chiste
      _acudit = await AcuditService().getAcudit();
      
      // Notifica a todos los widgets que dependen de este estado que ha cambiado
      notifyListeners(); 
    } catch (e) {
      // En caso de error, se imprime el mensaje de error
      print('Error: $e');
    }
  }
}
