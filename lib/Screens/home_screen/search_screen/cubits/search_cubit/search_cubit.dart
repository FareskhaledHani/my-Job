import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../../core/cash_helper.dart';
import '../../models/search_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final Url2= 'https://project2.amit-learning.com/api/jobs/search';
  Dio dio = Dio();
  SearchCubit() : super(SearchInitial());
  Future<void> fetchJobs() async {
    emit(GetSearchJobLoadingState());
    try {

      Response response = await dio.post(
        Url2,
        options: Options(
          headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
        ),
      );
      print(response.data);
      if (response.statusCode == 200) {
        JobsResponse jobsResponse = JobsResponse.fromJson(response.data);
        emit(GetSearchJobSuccess(jobsResponse.data));
        print(jobsResponse.data);
      } else {
        emit(GetSearchJobFailureState( errorMessage: 'Failed to load jobs',));
      }
    } catch (e) {
      emit(GetSearchJobFailureState( errorMessage: 'Error: $e',));
    }
  }

}
