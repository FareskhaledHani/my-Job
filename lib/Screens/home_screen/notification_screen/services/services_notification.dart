import 'package:dio/dio.dart';
import '../../../../core/cash_helper.dart';
import '../model/model.dart';

class ApiServicesNotification{
  final Url= 'https://project2.amit-learning.com/api/notification/1';
  final Dio dio=Dio() ;
  Future<NotificationsJobModel> getNotificationJob() async {
    try {
      Response response = await dio.get(
        Url,
        options: Options(
          headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
        ),
      );
      if(response.statusCode==200){
        return NotificationsJobModel.fromJson(response.data['data']);
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