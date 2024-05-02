class ResetNameModel {
  final String name;
  ResetNameModel({required this.name});

  Map<String, dynamic> tojson() {
    return {
      'name':name,
    };
  }
}