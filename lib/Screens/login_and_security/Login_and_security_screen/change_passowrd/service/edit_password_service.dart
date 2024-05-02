import 'package:dio/dio.dart';

import '../../../../../core/cash_helper.dart';
import '../model/change_password_model.dart';

const String baseUrl = "https://project2.amit-learning.com/api";
// final ServicesAuth _authService = ServicesAuth();
Dio dio=Dio();
class ServiceUpdatePassword{
  Future <void>updatePassword( String password)async{
    try{
      final resetPasswordModel=ResetPasswordModel( password: password);
      Response response=await dio.post(
          options: Options(
            headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
          ),
          'https://project2.amit-learning.com/api/auth/user/update',
          data:resetPasswordModel.tojson());
      print('===========================================${response.statusCode}');
      if(response.statusCode==200){
        print('=============================${response.data}');

      }else {'Login faild code is up to 200';}
    }catch (e){
      print("object");
    }
  }
}