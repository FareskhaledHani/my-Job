import 'package:dio/dio.dart';
import '../../../core/cash_helper.dart';
import '../models/card_employees_model.dart';

class JobDetailsServices{
  final url= 'https://project2.amit-learning.com/api/jobs';
  final Dio dio=Dio() ;
  Future<JobDetailsModel> getJobDetails(int id) async {
    try {
      Response response = await dio.get(
        '$url/${id}',
        options: Options(
          headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
        ),
      );
      print(response.data);
      print(response.statusCode);
      if(response.statusCode==200){
        return JobDetailsModel.fromJson(response.data['data']);
      }else {
        throw Exception('Failed to load suggestion job data');
      }
    } on DioException catch (e) {
      final String erorrMessage= e.response?.data['message']??'erorr Message';
      throw Exception(erorrMessage);
    }catch (e){
      throw Exception('=======================###################=$e');
    }
  }
}