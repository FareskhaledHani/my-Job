class RegisterModel {
  final String email;
  final String password;
  final String userName;
  RegisterModel( {required this.email,required this.password,required this.userName,});

  Map<String, dynamic> tojson() {
    return {
      'name':userName,
      'email': email,
      'password':password,
    };
  }
}