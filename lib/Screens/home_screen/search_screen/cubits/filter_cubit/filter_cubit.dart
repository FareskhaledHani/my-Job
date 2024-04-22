import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:finalproject/constant/constants.dart';
import 'package:meta/meta.dart';
import '../../../../../core/cash_helper.dart';
import '../../models/filter_model.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
 // final key= '/jobs/filter';
  final url= 'https://project2.amit-learning.com/api/jobs/filter';
  Dio dio = Dio();
  FilterCubit() : super(FilterInitial());
  Future<void> fetchFilterJobs( String name)async {
    emit(GetFilterJobLoadingState());
    try {

      Response response = await dio.post(
        url,
        options: Options(
          headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
        ),
        data: {
          'name':name,
          //'location':location,
          // 'salary':salary,
        },
      );
      print(response.data);
      if (response.statusCode == 200) {
        JobsResponseFilter jobsResponse = JobsResponseFilter.fromJson(response.data);
        emit(GetFilterJobSuccess(jobsResponse.data));
        print(jobsResponse.data);
      } else {
        emit(GetFilterJobFailureState( errorMessage: 'Failed to load jobs',));
      }
    } catch (e) {
      emit(GetFilterJobFailureState( errorMessage: 'Error: $e',));
    }
  }
}
