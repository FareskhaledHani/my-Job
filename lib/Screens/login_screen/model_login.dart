class LogInModel {
  final String email;
  final String password;
  LogInModel({required this.email,required this.password});

   Map<String, dynamic> tojson() {
    return {
      'email': email,
      'password':password,
    };
  }
}