
class MessageData {
  final int id;
  final String name;
  final String email;
  final String about;
  MessageData({
    required this.id,
    required this.name,
    required this.email,
    required this.about,

  });
  factory MessageData.fromJson(Map<String, dynamic> json) {
    return MessageData(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      about: json['about'],
    );
  }
}




