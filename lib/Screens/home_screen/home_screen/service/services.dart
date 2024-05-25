import 'package:dio/dio.dart';
import 'package:finalproject/Screens/home_screen/home_screen/models/suggestion_job.dart';
import '../../../../core/cash_helper.dart';

class ApiServices{
  final Url= 'https://project2.amit-learning.com/api/jobs/sugest/2';
  final Dio dio=Dio() ;
  Future<SuggestionJobModel> getSuggestionJob() async {
    try {
      Response response = await dio.get(
        Url,
        options: Options(
          headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
        ),
      );
      print(response.data);
      print(response.statusCode);
      if(response.statusCode==200){
        return SuggestionJobModel.fromJson(response.data['data']);
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