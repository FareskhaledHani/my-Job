import 'package:dio/dio.dart';

import '../../../../../core/cash_helper.dart';
import '../model/edit_name_service.dart';


const String baseUrl = "https://project2.amit-learning.com/api";

Dio dio=Dio();
class ServiceUpdateName{
  Future <void>updateName( String name)async{
    try{
      final resetNameModel=ResetNameModel( name: name);
      Response response=await dio.post(
          options: Options(
            headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
          ),
          'https://project2.amit-learning.com/api/auth/user/update',
          data:resetNameModel.tojson());
      print('===========================================${response.statusCode}');
      if(response.statusCode==200){
        print('=============================${response.data}');

      }else {'Login faild code is up to 200';}
    }catch (e){
      print("object");
    }
  }
}