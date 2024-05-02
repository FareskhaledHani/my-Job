import 'package:dio/dio.dart';

class PostPortfolioService {
  final Dio _dio = Dio();

  Future<void> uploadFiles(String cvFilePath, String imagePath) async {
    String apiUrl = 'YOUR_API_ENDPOINT';

    try {
      FormData formData = FormData.fromMap({
        'cv_file': await MultipartFile.fromFile(cvFilePath, filename: 'cv_file'),
        'image': await MultipartFile.fromFile(imagePath, filename: 'image'),
      });

      Response response = await _dio.post(
        apiUrl,
        data: formData,
        options: Options(
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        ),
      );

      // Handle response
      print(response.data);
    } catch (e) {
      // Handle errors
      print('Error uploading files: $e');
    }
  }
}