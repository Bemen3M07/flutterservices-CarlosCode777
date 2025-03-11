// Model que defineix l'estructura d'un acudit
class AcuditModel {
  final int id;
  final String setup;
  final String punchline;

  AcuditModel({
    required this.id,
    required this.setup,
    required this.punchline,
  });

  // Funció per crear un objecte AcuditModel des d'un mapa
  factory AcuditModel.fromMap(Map<String, dynamic> map) {
    return AcuditModel(
      id: map['id'],
      setup: map['setup'],
      punchline: map['punchline'],
    );
  }
}
