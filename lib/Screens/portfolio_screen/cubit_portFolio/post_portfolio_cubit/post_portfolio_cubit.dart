import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../../core/cash_helper.dart';
part 'post_portfolio_state.dart';

class PostPortfolioCubit extends Cubit<PostPortfolioState> {
  PostPortfolioCubit() : super(PostPortfolioInitial());
  Dio dio =Dio();
  final String url= 'https://project2.amit-learning.com/api/user/profile/portofolios';

  Future<void> postPortFolio(String cvFilePath, String imagePath) async {
    try {
      emit(PostPortfolioLoadingState());
      FormData formData = FormData.fromMap({
        'cv_file': await MultipartFile.fromFile(cvFilePath, filename: 'cv_file'),
        'image': await MultipartFile.fromFile(imagePath, filename: 'image'),
      });

      Response response = await dio.post(
        url,
        data: formData,
        options: Options(
          headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
        ),
      );
      if (response.statusCode==200){
        // int idToDelete=response.data['id'];
        emit(PostPortfolioSuccess());
        print('===============================${response.statusCode}==============================');
      }
      else{
        emit(PostPortfolioFailureState(errorMessage: 'errorMessage in status code or url'));
      }
      // Handle response
      print(response.data);
    } catch (e) {
      // Handle errors
      print('Error uploading files   function: $e');
    }
  }
}

