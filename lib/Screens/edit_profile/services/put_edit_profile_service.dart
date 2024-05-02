  import 'package:dio/dio.dart';

import '../../../core/cash_helper.dart';

  class EditProfileService {
    final Dio dio = Dio();

    Future<void> updateUserProfile({
      required String bio,
      required String address,
      required String mobile,
      // required String language,
      // required String interestedWork,
      // required String offlinePlace,
      // required String remotePlace,
      // required String experience,
      // required String personalDetailed,
      // required String education,
    }) async {
      String apiUrl = 'https://project2.amit-learning.com/api/user/profile/edit?';

      try {
        Response response = await dio.put(
          options: Options(
            headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
          ),
          apiUrl,
          queryParameters: {
            'bio': bio,
            'address': address,
            'mobile': mobile,
            // 'language': language,
            // 'interested_work': interestedWork,
            // 'offline_place': offlinePlace,
            // 'remote_place': remotePlace,
            // 'experience': experience,
            // 'personal_detailed': personalDetailed,
            // 'education': education,
          },
        );
        print(response.statusCode);
        // Handle response
        print(response.data);
      } catch (e) {
        // Handle errors
        print('Error updating user profile: $e');
      }
    }
  }