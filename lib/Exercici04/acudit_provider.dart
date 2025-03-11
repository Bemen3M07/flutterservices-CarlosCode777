import 'package:flutter/material.dart';
import 'acudit_service.dart';
import 'acudit_model.dart';

class AcuditProvider with ChangeNotifier {
  AcuditModel? _acudit;

  AcuditModel? get acudit => _acudit;

  // Función para obtener un nuevo chiste
  Future<void> fetchNewAcudit() async {
    try {
      _acudit = await AcuditService().getAcudit();
      notifyListeners();  // Notificar a los widgets que el estado ha cambiado
    } catch (e) {
      print('Error: $e');
    }
  }
}
