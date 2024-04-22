import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:finalproject/Screens/cereate_acount/model/register_model.dart';
import 'package:meta/meta.dart';
part 'create_account_state.dart';

class CreateAccountCubit extends Cubit<CreateAccountState> {
  CreateAccountCubit() : super(CreateAccountInitial());
  final String baseUrl = "https://project2.amit-learning.com/api";

  Dio dio=Dio();
  Future <void>Register(String email,String password,String userName)async{
    try{
      emit(AuthLoading());
      final registerModel=RegisterModel(email: email, password: password ,userName:userName);
      Response response=await dio.post('$baseUrl/auth/login',data: registerModel.tojson());
      if(response.statusCode==200){
        emit(AuthAuthenticated());
      }else {emit(AuthError('Login failed code is up to 200'));}
    }catch (e){
      emit(AuthError('an error in code in please try again'));
    }
  }
}
