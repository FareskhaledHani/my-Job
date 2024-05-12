import 'package:dio/dio.dart';
import '../../../core/cash_helper.dart';

class EditServiceEducation {
  final Dio dio = Dio();
  Future<void> updateEducationProfile({

     required String education,
  }) async {
    String apiUrl = 'https://project2.amit-learning.com/api/user/profile/edit?';
    try {
      Response response = await dio.put(
        options: Options(
          headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
        ),
        apiUrl,
        queryParameters: {
          'education': education,
        },
      );
      print(response.statusCode);
      // Handle response
      print(response.data);
    } catch (e) {
      // Handle errors
      print('Error updating user profile: $e');
    }
  }
}