import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../../core/cash_helper.dart';
import '../../model/get_favorite_model.dart';
part  'get_favorite_state.dart';


// class GetFavoriteServicesCubit extends Cubit<GetFavoriteState>  {
//   final Url2= 'https://project2.amit-learning.com/api/favorites';
//   Dio dio = Dio();
//   GetFavoriteServicesCubit() : super(GetFavoriteInitial());
//   Future<void> getFavoriteJobs() async {
//    emit(GetFavoriteJobLoadingState());
//     try {
//
//       Response response = await dio.get(
//         Url2,
//         options: Options(
//           headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
//         ),
//       );
//       print(response.data);
//        if (response.statusCode == 200) {
//          JobsResponseFavorite jobsResponseFavorite=JobsResponseFavorite.fromJson(response.data);
//          emit(GetFavoriteJobSuccessState(jobsResponseFavorite.data));
//
//         //Map<String,dynamic> jsonFavoriteJob=response.data;
//         // List<dynamic>getFavorites=jsonFavoriteJob['data'];
//         // List<GetFavoriteJob>getFavoriteList=[];
//         // for (var job in getFavorites){
//         //   GetFavoriteJob getFavoriteJo=GetFavoriteJob.fromJson(job);
//         //   getFavoriteList.add(getFavoriteJo);
//         }else{
//
//          emit(GetFavoriteJobFailureState(errorMessage: 'Failed to load jobs',));
//        }
//         // print(getFavoriteList);
//         // return getFavoriteList ;
//       }catch (e){
//       emit(GetFavoriteJobFailureState(errorMessage: 'Error: $e'));
//     }
//   }
// }
class GetFavoriteServices {
  final String apiUrl = 'https://project2.amit-learning.com/api/favorites';
  final Dio dio = Dio();

  Future<List<GetFavoriteJob>> getFavoriteJobs() async {
    try {
      final response = await dio.get(
        apiUrl,
        options: Options(
          headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
        ),
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['data'];
        List<GetFavoriteJob> favoriteJobs = data
            .map((jobData) => GetFavoriteJob.fromJson(jobData))
            .toList();
        return favoriteJobs;
      } else {
        throw Exception('Failed to load favorite jobs');
      }
    } catch (e) {
      print('Error fetching favorite jobs: $e');
      return [];
    }
  }
}