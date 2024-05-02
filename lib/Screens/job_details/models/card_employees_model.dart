class CardEmployeesModel {
  late final String photo;
  late final String name;
  late final String detailsEmploy;
  late final String experience;
  late final String yearsExperience;

  CardEmployeesModel(
      {required this.name,
      required this.photo,
      required this.detailsEmploy,
      required this.experience,
      required this.yearsExperience});
}
class JobDetailsModel{
  final String image;
  final String name;
  final String jobTimeType;
  final String compName;
  final String salary;
  final String location;
  final int id;
  final String jobDescription;
  final String jobSkill;
  final String compEmail;
  final String compWebsite;
  final String aboutComp;
  JobDetailsModel({required this.aboutComp,required this.compEmail,required this.compWebsite,required this.jobDescription,required this.jobSkill,required this.location,required this.id, required this.image,required this.name,required this.jobTimeType,required this.compName,required this.salary});
  factory JobDetailsModel.fromJson(Map<String,dynamic> json){

    return JobDetailsModel(
      image: json['image']??'',
      name: json['name']??'',
      jobTimeType: json['job_time_type']??'',
      compName: json['comp_name']??'',
      salary: json['salary']??'',
      location: json['location']??'',
      id: json['id']??'',
      jobDescription: json['job_description']??'',
      jobSkill: json['job_skill']??'',
      compEmail: json['comp_email']??'',
      compWebsite: json['comp_website']??'',
      aboutComp: json['about_comp']??'',
    );
  }
}