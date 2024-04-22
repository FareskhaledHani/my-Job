
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:finalproject/Screens/login_screen/model_login.dart';

import '../../core/cash_helper.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  final String baseUrl = "https://project2.amit-learning.com/api";
 // final ServicesAuth _authService = ServicesAuth();
  Dio dio=Dio();
  Future <void>Login(String email,String password)async{
    try{
      emit(AuthLoading());
      final logInModel=LogInModel(email: email, password: password);
      Response response=await dio.post('$baseUrl/auth/login',data: logInModel.tojson());
      if(response.statusCode==200){
        final token = response.data['token'];
        CacheHelper.setToken(token);
        emit(AuthAuthenticated());
      }else {emit(AuthError('Login faild code is up to 200'));}
    }catch (e){
      emit(AuthError('an error in code in please try again'));
    }
    }
  }









  // visible and hidden icons
enum PasswordVisibility { visible, hidden }

class PasswordVisibilityCubit extends Cubit<PasswordVisibility> {
  PasswordVisibilityCubit() : super(PasswordVisibility.hidden);

  void toggleVisibility() {
    emit(state == PasswordVisibility.hidden
        ? PasswordVisibility.visible
        : PasswordVisibility.hidden);
  }
}