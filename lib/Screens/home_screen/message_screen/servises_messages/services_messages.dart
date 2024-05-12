import 'package:dio/dio.dart';

import '../../../../core/cash_helper.dart';
import '../models/model.dart';

class GetMessagesService {
  final String apiUrl = 'https://project2.amit-learning.com/api/showCompany';
  final Dio dio = Dio();

  Future<List<MessageData>> getMessagesJob() async {
    try {
      final response = await dio.get(
        apiUrl,
        options: Options(
          headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
        ),
      );

      if (response.statusCode == 200) {
        print(response.data);
        // final List<dynamic> data = response.data['data'];
        // print('=======================================$data');
        List<dynamic> jsonData = response.data['data'];
        List<MessageData> messageDataList = jsonData.map((json) => MessageData.fromJson(json)).toList();
        print('===================+$messageDataList');
        return messageDataList;
      } else {
        throw Exception('Failed to load favorite jobs');
      }
    } catch (e) {
      print('Error fetching favorite jobs: ${e.toString()}');
      return [];
    }
  }
}