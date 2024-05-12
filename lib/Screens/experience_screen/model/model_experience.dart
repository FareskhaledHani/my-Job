

class ModelExperience {
  final String userId;
  final String position;
  final String typeWok;
  final String companyName;
  final String location;
  final String start;
  final String end;

  ModelExperience({
    required this.userId,
    required this.position,
    required this.typeWok,
    required this.companyName,
    required this.location,
    required this.start,
    required this.end,

  });

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'postion': position,
      'type_work': position,
      'comp_name': position,
      'location': position,
      'start': position,
      'end': position,
    };
  }

  factory ModelExperience.fromJson(Map<String, dynamic> json) {
    return ModelExperience(
      userId: json['user_id'],
      location:json['postion'],
      position: json['type_work'],
      typeWok: json['comp_name'],
      companyName: json['location'],
      end:json['start'],
      start: json['end'],
    );
  }


}