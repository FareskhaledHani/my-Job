import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../../core/cash_helper.dart';
import '../../../../core/services/file_picker_helper.dart';

part 'delete_portfolio_state.dart';

class DeletePortfolioCubit extends Cubit<DeletePortfolioState> {
  DeletePortfolioCubit() : super(DeletePortfolioInitial());
  Dio dio =Dio();
  FilePickerHelper filePickerHelper=FilePickerHelper();
  final String url= 'https://project2.amit-learning.com/api/user/profile/portofolios';
  Future<void> deleteFavoriteJob(int id)async {
    try {
      emit(DeletePortfolioLoadingState());
      await filePickerHelper.deleteFile(id);
      Response response = await dio.delete(
        '$url/${id}',
        options: Options(
          headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
        ),

      );
      print(response.data);
      if (response.statusCode == 200) {
        emit(DeletePortfolioSuccess());

        print('========================================================requist is successul');
      } else {
        emit(DeletePortfolioFailureState(errorMessage: '********************************************************Failed to load jobs'));
        //  print('********************************************************Failed to load jobs');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
