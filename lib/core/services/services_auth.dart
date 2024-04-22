import 'package:dio/dio.dart';
class ServicesAuth {
  Dio dio = Dio();
  final String baseUrl = "https://project2.amit-learning.com/api";

  Future<bool> signUp(String email, String password,String userName) async {
    try {
      Response response = await dio.post('$baseUrl/auth/register', data: {
        'userName':userName,
        'email': email,
        'password': password,
      });
      return response.statusCode == 200;
    } catch (eror) {
      print(eror);
      return false;
    }
  }
}
