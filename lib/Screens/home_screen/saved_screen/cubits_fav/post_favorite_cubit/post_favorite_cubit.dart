import 'package:dio/dio.dart';
import '../../../../../core/cash_helper.dart';
import '../../model/post_favorite_model.dart';


class PostFavoriteService  {
  Dio dio =Dio();
 final String url= 'https://project2.amit-learning.com/api/favorites';

  Future<void> postFavoriteJob(PostModelJobFavorite model )async {
    try {

      Response response = await dio.post(
        url,
        options: Options(
          headers: {"Authorization": "Bearer ${CacheHelper.getToken()}"},
        ),
        data: model.toJson(),
      );
      print(response.data);
      if (response.statusCode == 200) {

        print('========================================================requist is successul');
      } else {
       print('********************************************************Failed to load jobs');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
