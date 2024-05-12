import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../core/cash_helper.dart';
import '../../model/model_experience.dart';

part 'experience_state.dart';

class ExperienceCubit extends Cubit<ExperienceState> {
  Dio dio=Dio();
  final String url='https://project2.amit-learning.com/api/experince';
  ExperienceCubit() : super(ExperienceInitial());
   Future<void>sendExperience(ModelExperience modelExperience)async {
     try {
       emit(ExperienceLoading());
       Response response = await dio.post(
         url,
         options: Options(
           headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
         ),
         data: modelExperience.toJson(),
       );
       print(response.data);
       print('-------------------------------------------------');
       if (response.statusCode == 200) {

         emit(ExperienceSuccess());
        // print(jobsResponse);
       } else {
         emit(ExperienceFailure( errorMessage: 'Failed to load jobs',));
       }
     } catch (e) {
       return ;
     }
   }
}
