// import 'package:dio/dio.dart';
// import '../../../../core/cash_helper.dart';
// import '../models/search_model.dart';
//
//
// class ApiServices{
//   final Url= 'https://project2.amit-learning.com/api/jobs/sugest/2';
//   final Dio dio=Dio() ;
//   Future<JobsResponse> getSuggestionJob() async {
//     try {
//       Response response = await dio.get(
//         Url,
//         options: Options(
//           headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
//         ),
//       );
//       if(response.statusCode==200){
//         return JobsResponse.fromJson(response.data);
//       }else {
//         throw Exception('Failed to load suggestion job data');
//       }
//     } on DioException catch (e) {
//       final String erorrMessage= e.response?.data['message']??'erorr Message';
//       throw Exception(erorrMessage);
//     }catch (e){
//       throw Exception('=======================###################=$e');
//     }
//   }
// }