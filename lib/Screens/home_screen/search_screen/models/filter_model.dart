// Dart class representing an individual job item
class JobFilter {
  final int id;
  final String name;
  final String image;
  final String jobTimeType;
  final String jobType;
  final String jobLevel;
  final String jobDescription;
  final String jobSkill;
  final String compName;
  final String compEmail;
  final String compWebsite;
  final String aboutComp;
  final String location;
  final String salary;
  final int favorites;
  final int expired;
  final String createdAt;
  final String updatedAt;

  JobFilter({
    required this.id,
    required this.name,
    required this.image,
    required this.jobTimeType,
    required this.jobType,
    required this.jobLevel,
    required this.jobDescription,
    required this.jobSkill,
    required this.compName,
    required this.compEmail,
    required this.compWebsite,
    required this.aboutComp,
    required this.location,
    required this.salary,
    required this.favorites,
    required this.expired,
    required this.createdAt,
    required this.updatedAt,
  });

  factory JobFilter.fromJson(Map<String, dynamic> json) {
    return JobFilter(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      jobTimeType: json['job_time_type'],
      jobType: json['job_type'],
      jobLevel: json['job_level'],
      jobDescription: json['job_description'],
      jobSkill: json['job_skill'],
      compName: json['comp_name'],
      compEmail: json['comp_email'],
      compWebsite: json['comp_website'],
      aboutComp: json['about_comp'],
      location: json['location'],
      salary: json['salary'],
      favorites: json['favorites'],
      expired: json['expired'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}

// Dart class representing the API response
class JobsResponseFilter {
  final bool status;
  final List<JobFilter> data;

  JobsResponseFilter({required this.status, required this.data});

  factory JobsResponseFilter.fromJson(Map<String, dynamic> json) {
    List<JobFilter> jobsList = [];

    if (json['status'] == true && json['data'] != null) {
      json['data'].forEach((jobData) {
        jobsList.add(JobFilter.fromJson(jobData));
      });
    }

    return JobsResponseFilter(status: json['status'], data: jobsList);
  }
}
