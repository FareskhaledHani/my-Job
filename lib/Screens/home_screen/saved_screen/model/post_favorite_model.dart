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

