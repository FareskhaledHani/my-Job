import 'package:dio/dio.dart';

import '../../../../core/cash_helper.dart';
import '../models/all_jobs_model.dart';


class GetAllJobsService {
  final String apiUrl = 'https://project2.amit-learning.com/api/jobs';
  final Dio dio = Dio();

  Future<List<AllJobModel>> getAllJob() async {
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
        List<AllJobModel> allJobsList = jsonData.map((json) => AllJobModel.fromJson(json)).toList();
        print('===================+$allJobsList');
        return allJobsList;
      } else {
        throw Exception('Failed to load favorite jobs');
      }
    } catch (e) {
      print('Error fetching favorite jobs: ${e.toString()}');
      return [];
    }
  }
}