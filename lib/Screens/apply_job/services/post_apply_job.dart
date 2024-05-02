import 'package:dio/dio.dart';
import 'package:finalproject/Screens/apply_job/models/post_apply_job_model.dart';

import '../../../core/cash_helper.dart';

void postJobApply(PostApplyJob application, FormData formData) async {
  Dio dio = Dio();
   String urlPost='https://project2.amit-learning.com/api';

 // final PostApplyJob postApplyJob = PostApplyJob();
  //final FormData formData = postApplyJob.toFormData();
  try {
    // FormData formData = FormData.fromMap({
    //   'name': application.name,
    //   'email': application.email,
    //   'mobile': application.mobile,
    //   'work_type': application.workType,
    //   'cv_file': await MultipartFile.fromFile(application.cvFile.path),
    //   'other_file': await MultipartFile.fromFile(application.otherFile.path),
    //   'jobs_id': application.jobId,
    //   'user_id': application.userId,
    // });

    Response response = await dio.post(
      urlPost,
      data: formData,
      options: Options(
        headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
      ),
    );

    print(response.data);

  } catch (e) {
    print('Error submitting job application: $e');
    // Handle error here
  }
}