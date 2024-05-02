// import 'package:bloc/bloc.dart';
// import 'package:dio/dio.dart';
// import 'package:meta/meta.dart';
//
// import '../../../../core/cash_helper.dart';
//
// part 'notifications_state.dart';
//
// class MessagesCubit extends Cubit<MessagesState> {
//   final Url2= 'https://project2.amit-learning.com/api/notification/1';
//   Dio dio = Dio();
//   MessagesCubit() : super(NotificationsInitial());
//   Future<void> fetchJobs() async {
//     emit(GetNotificationsLoadingState());
//     try {
//
//       Response response = await dio.post(
//         Url2,
//         options: Options(
//           headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
//         ),
//       );
//       print(response.data);
//       if (response.statusCode == 200) {
//         JobsResponse jobsResponse = JobsResponse.fromJson(response.data);
//         emit(GetNotificationsSuccess(jobsResponse.data));
//         print(jobsResponse.data);
//       } else {
//         emit(GetNotificationsFailureState( errorMessage: 'Failed to load jobs',));
//       }
//     } catch (e) {
//       emit(GetNotificationsFailureState( errorMessage: 'Error: $e',));
//     }
//   }
// }
