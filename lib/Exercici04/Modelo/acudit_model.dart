// Model que defineix l'estructura d'un acudit
class AcuditModel {
  // Propietats de l'acudit: id, setup (pregunta) i punchline (resposta)
  final int id;
  final String setup;
  final String punchline;

  // Constructor per inicialitzar les propietats del model
  AcuditModel({
    required this.id,  // Id únic per identificar l'acudit
    required this.setup,  // Pregunta o situació inicial del chiste
    required this.punchline,  // Resposta final o remate del chiste
  });

  // Funció per crear un objecte AcuditModel des d'un mapa (ús de Map<String, dynamic>)
  // Aquesta funció permet convertir un mapa de dades (com el JSON) en un objecte d'acudit
  factory AcuditModel.fromMap(Map<String, dynamic> map) {
    return AcuditModel(
      id: map['id'],  // Accedeix al valor de la clau 'id' del mapa
      setup: map['setup'],  // Accedeix al valor de la clau 'setup' (pregunta)
      punchline: map['punchline'],  // Accedeix al valor de la clau 'punchline' (resposta)
    );
  }
} 
