class ProfileName{
  final String name;
  final String email;
  final int id;
  ProfileName({required this.email,required this.id, required this.name});
  factory ProfileName.fromJson(Map<String,dynamic> json){
    return ProfileName(
      name: json['name']??'',
      email: json['email']??'',
      id: json['id']??'',
    );
  }
}
