// Dart class representing an individual job item
class GetFavoriteJob {
  final int jobId;
  final  GetJobsInFavoriteItem getJobs;

  GetFavoriteJob({
    required this.getJobs,required this.jobId

  });

  factory GetFavoriteJob.fromJson(Map<String, dynamic> json) {
    return GetFavoriteJob(
      getJobs: GetJobsInFavoriteItem.fromJson(json['jobs']),
      jobId: json['id'],
    );
  }
}


 class GetJobsInFavoriteItem{
   final int id;
   final String name;
   final String image;
   final String jobTimeType;
   final String jobType;
   final String jobLevel;
   final String jobDescription;
   final String jobSkill;
   final String companyName;
   final String companyEmail;
   final String companyWebsite;
   final String aboutCompany;
   final String location;
   final String salary;
   final int favorites;
   final int expired;
   final String createdAt;
   final String updatedAt;
   GetJobsInFavoriteItem({
     required this.id,
     required this.name,
     required this.image,
     required this.jobTimeType,
     required this.jobType,
     required this.jobLevel,
     required this.jobDescription,
     required this.jobSkill,
     required this.companyName,
     required this.companyEmail,
     required this.companyWebsite,
     required this.aboutCompany,
     required this.location,
     required this.salary,
     required this.favorites,
     required this.expired,
     required this.createdAt,
     required this.updatedAt,
 });

   factory GetJobsInFavoriteItem.fromJson(Map<String, dynamic> json) {
     return GetJobsInFavoriteItem(
       id: json['id'],
       name: json['name'],
       image: json['image'],
       jobTimeType: json['job_time_type'],
       jobType: json['job_type'],
       jobLevel: json['job_level'],
       jobDescription: json['job_description'],
       jobSkill: json['job_skill'],
       companyName: json['comp_name'],
       companyEmail: json['comp_email'],
       companyWebsite: json['comp_website'],
       aboutCompany: json['about_comp'],
       location: json['location'],
       salary: json['salary'],
       favorites: json['favorites'],
       expired: json['expired'],
       createdAt: json['created_at'],
       updatedAt: json['updated_at'],
     );
   }
 }


class JobsResponseFavorite {
  final bool status;
  final List<GetFavoriteJob> data;

  JobsResponseFavorite({required this.status, required this.data});

  factory JobsResponseFavorite.fromJson(Map<String, dynamic> json) {
    List<GetFavoriteJob> jobsList = [];

    if (json['status'] == true && json['data'] != null) {
      json['data'].forEach((jobData) {
        jobsList.add(GetFavoriteJob.fromJson(jobData));
      });
    }

    return JobsResponseFavorite(status: json['status'], data: jobsList);
  }
}












// Dart class representing the API response
// class GetFavoriteJobResponse {
//   final bool status;
//   final List<GetFavoriteJob> data;
//
//   GetFavoriteJobResponse({required this.status, required this.data});
//
//   factory GetFavoriteJobResponse.fromJson(Map<String, dynamic> json) {
//     List<GetFavoriteJob> getFavoriteJobsList = [];
//
//     if (json['status'] == true && json['data'] != null) {
//       json['data']['jobs'].forEach((jobData) {
//         getFavoriteJobsList.add(GetFavoriteJob.fromJson(jobData));
//       });
//     }
//
//     return GetFavoriteJobResponse(status: json['status'], data: getFavoriteJobsList);
//   }
// }
