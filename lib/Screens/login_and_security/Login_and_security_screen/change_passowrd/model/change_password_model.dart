class ResetPasswordModel {
  final String password;
  ResetPasswordModel({required this.password});

  Map<String, dynamic> tojson() {
    return {
      'password':password,
    };
  }
}