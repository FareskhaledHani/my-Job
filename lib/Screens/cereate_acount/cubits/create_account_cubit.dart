import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:finalproject/Screens/cereate_acount/model/register_model.dart';
import 'package:meta/meta.dart';
import '../../../core/cash_helper.dart';
part 'create_account_state.dart';

class CreateAccountCubit extends Cubit<CreateAccountState> {
  CreateAccountCubit() : super(CreateAccountInitial());
  final String baseUrl = "https://project2.amit-learning.com/api";

  Dio dio=Dio();
  Future <void>Register(String email,String password,String userName)async{
    try{
      emit(AuthLoading());
      final registerModel=RegisterModel(email: email, password: password ,userName:userName);
      Response response=await dio.post('$baseUrl/auth/register',data: registerModel.tojson());
      if(response.statusCode==200){
        final token = response.data['token'];
        CacheHelper.setToken(token);
        emit(AuthAuthenticated());
      }
      else {
        final List<String>errorMessage= response.data['massege']['email'];
        emit(AuthError( message: errorMessage.first));}
      print('-=======================================================${response.data}');
    }catch (e){
      emit(AuthError( message: ' '));
      print('+++++++++++++++++++++++++++++++++++++$e');
    }
  }
}
