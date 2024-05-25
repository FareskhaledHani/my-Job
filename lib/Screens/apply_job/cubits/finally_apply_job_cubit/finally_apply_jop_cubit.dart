import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../core/cash_helper.dart';
import '../../models/post_apply_job_model.dart';

part 'finally_apply_jop_state.dart';

class FinallyApplyJopCubit extends Cubit<FinallyApplyJopState> {
  FinallyApplyJopCubit() : super(FinallyApplyJopInitial());
  final Dio _dio = Dio();
  Future<void> submitJobApplication(PostJobApplication postJobApplication) async {
    try {
      emit(FinallyApplyJopLoading());
      FormData formData = FormData.fromMap({
        'cv_file': await MultipartFile.fromFile(postJobApplication.cvFile.path, filename: postJobApplication.cvFile.path.split('/').last),
        'name': postJobApplication.name,
        'email': postJobApplication.email,
        'mobile': postJobApplication.mobile,
        'work_type': postJobApplication.workType,
        'other_file': await MultipartFile.fromFile(postJobApplication.otherFile.path, filename: postJobApplication.otherFile.path.split('/').last),
        'jobs_id': postJobApplication.jobsId,
        'user_id': postJobApplication.userId,
      });
      final response = await _dio.post(
        'https://project2.amit-learning.com/api/apply',
        data: formData,
        options: Options(
          headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
        ),
      );

      if (response.statusCode == 200) {
        emit(FinallyApplyJopSuccess());
        print('Job application submitted successfully');
      } else {
        emit(FinallyApplyJopFailure(errorMessage: 'Failed to submit job application'));
        print('Failed to submit job application');
      }
    } catch (e) {
      emit(FinallyApplyJopFailure(errorMessage: 'Failed in Poost $e'));
      print('Error: $e');
    }
  }
}
