import 'package:flutter/material.dart';  // Se importa el paquete de Flutter para usar widgets y otras funcionalidades de la interfaz de usuario
import 'package:provider/provider.dart';  // Se importa el paquete provider para gestionar el estado de la aplicación con el patrón Provider
import '../Provider/acudit_provider.dart';  // Se importa el proveedor que maneja la lógica de obtener un chiste

// HomeScreen es un widget sin estado (StatelessWidget) que representa la pantalla principal
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold es un widget que proporciona la estructura básica de la interfaz de usuario (barra de app, cuerpo, etc.)
    return Scaffold(
      appBar: AppBar(
        title: Text('Acudit Aleatori'),  // Título de la barra de la app
      ),
      body: Center(
        // Consumer es un widget que escucha cambios en el proveedor (AcuditProvider) y reconstruye la interfaz cuando el estado cambia
        child: Consumer<AcuditProvider>(
          builder: (context, acuditProvider, _) {
            // Si no hay un chiste, muestra el botón para obtener uno nuevo
            if (acuditProvider.acudit == null) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,  // Centra los elementos verticalmente
                children: [
                  Text('Prem el botó per obtenir un acudit!'),  // Mensaje indicativo para el usuario
                  SizedBox(height: 20),  // Espacio entre los widgets
                  ElevatedButton(
                    onPressed: () {
                      // Llamamos a la función fetchNewAcudit para obtener un nuevo chiste
                      acuditProvider.fetchNewAcudit();
                    },
                    child: Text('Obtenir Acudit'),  // Texto en el botón
                  ),
                ],
              );
            }

            // Si ya tenemos un chiste, lo mostramos
            final acudit = acuditProvider.acudit!;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,  // Centra los elementos verticalmente
              children: [
                Text(
                  acudit.setup,  // Se muestra la parte inicial del chiste
                  style: TextStyle(fontSize: 24),  // Estilo de texto
                  textAlign: TextAlign.center,  // Alineación del texto
                ),
                SizedBox(height: 20),  // Espacio entre los widgets
                Text(
                  acudit.punchline,  // Se muestra la respuesta del chiste (punchline)
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),  // Estilo de texto con mayor énfasis
                  textAlign: TextAlign.center,  // Alineación del texto
                ),
                SizedBox(height: 40),  // Espacio entre los widgets
                ElevatedButton(
                  onPressed: () {
                    // Llamamos a la función fetchNewAcudit para obtener un nuevo chiste
                    acuditProvider.fetchNewAcudit();
                  },
                  child: Text('Obtenir un altre acudit'),  // Texto en el botón para obtener otro chiste
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
