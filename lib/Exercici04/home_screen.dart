import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'acudit_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acudit Aleatori'),
      ),
      body: Center(
        child: Consumer<AcuditProvider>(
          builder: (context, acuditProvider, _) {
            // Si no hay un chiste, muestra el botón para obtener uno nuevo
            if (acuditProvider.acudit == null) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Prem el botó per obtenir un acudit!'),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Llamamos a la función para obtener un nuevo chiste
                      acuditProvider.fetchNewAcudit();
                    },
                    child: Text('Obtenir Acudit'),
                  ),
                ],
              );
            }
            // Si ya tenemos un chiste, lo mostramos
            final acudit = acuditProvider.acudit!;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  acudit.setup,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  acudit.punchline,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    // Llamamos a la función para obtener un nuevo chiste
                    acuditProvider.fetchNewAcudit();
                  },
                  child: Text('Obtenir un altre acudit'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
