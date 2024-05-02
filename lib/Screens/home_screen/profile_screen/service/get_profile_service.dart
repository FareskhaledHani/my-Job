import 'package:dio/dio.dart';

import '../../../../core/cash_helper.dart';
import '../models/get_profile_model.dart';

class GetProfileService {
  final Dio _dio = Dio();
  final url='https://project2.amit-learning.com/api/user/profile/portofolios';

  Future<GetUserProfileModel?> getUserProfile() async {
    try {
      Response response = await _dio.get(
        url,
          options: Options(
            headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
          ),);
      if (response.statusCode == 200) {
        print(response.data);
        print(response.statusCode);
        // Parse the response JSON data
        Map<String, dynamic> data = response.data;
        if (data['status'] == true) {
          // Parse the user profile data including portfolio
          Map<String, dynamic> userData = data['data']['profile'];
          List<dynamic> portfolioData = data['data']['portofolio'] ?? [];
          GetUserProfileModel getUserProfileModel = GetUserProfileModel.fromJson({
            ...userData,
            'portfolio': portfolioData,
          });
          return getUserProfileModel;
        } else {
          // Handle API error or invalid response
          return null;
        }
      } else {
        // Handle HTTP error
        return null;
      }
    } catch (e) {
      // Handle Dio errors or network errors
      print('Error fetching user profile: $e');
      return null;
    }
  }
}

