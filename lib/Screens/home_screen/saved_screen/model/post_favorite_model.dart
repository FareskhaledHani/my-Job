// Dart class representing an individual job item
class PostModelJobFavorite {
  final int jobId;
  final int like;
  final String image;
  final String location;


  PostModelJobFavorite({
    required this.jobId,
    required this.like,
    required this.image,
    required this.location,
  });

  Map<String, dynamic> toJson() {
    return {
      'job_id': jobId,
      'like': like,
      'image': image,
      'location': location,
    };
  }
}
// Dart class representing the API response
// class JobsFavoriteResponse {
//   final bool status;
//   final List<Job> data;
//
//   JobsFavoriteResponse({required this.status, required this.data});
//
//   factory JobsFavoriteResponse.fromJson(Map<String, dynamic> json) {
//     List<Job> jobsList = [];
//
//     if (json['status'] == true && json['data'] != null) {
//       json['data'].forEach((jobData) {
//         jobsList.add(Job.fromJson(jobData));
//       });
//     }
//
//     return JobsFavoriteResponse(status: json['status'], data: jobsList);
//   }
// }
