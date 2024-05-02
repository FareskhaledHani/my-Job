import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../../core/cash_helper.dart';

part 'delete_favorite_state.dart';

class DeleteFavoriteCubit extends Cubit<DeleteFavoriteState> {
  DeleteFavoriteCubit() : super(DeleteFavoriteInitial());
  Dio dio =Dio();
  final String url= 'https://project2.amit-learning.com/api/favorites';

  Future<void> deleteFavoriteJob(int id )async {
    try {
      emit(DeleteFavoriteJobLoadingState());
      Response response = await dio.delete(
        '$url/$id',
        options: Options(
          headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
        ),

      );
      print(response.data);
      if (response.statusCode == 200) {
        emit(DeleteFavoriteJobSuccess());
        print('========================================================requist is successul');
      } else {
        emit(DeleteFavoriteJobFailureState(errorMessage: '********************************************************Failed to load jobs'));
      //  print('********************************************************Failed to load jobs');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
