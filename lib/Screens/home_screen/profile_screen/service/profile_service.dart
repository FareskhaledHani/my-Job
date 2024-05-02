import 'package:dio/dio.dart';

import '../../../../core/cash_helper.dart';
import '../models/profile_model.dart';

class ProfileService{
  final Url= 'https://project2.amit-learning.com/api/auth/profile';
  final Dio dio=Dio() ;
  Future<ProfileName> profileService() async {
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
        return ProfileName.fromJson(response.data['data']);
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