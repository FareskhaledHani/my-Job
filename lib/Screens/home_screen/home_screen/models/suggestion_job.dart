//
// class JobSugAll{
//    List<SugesstionJobModel>? listSuggestion;
//
//    JobSugAll({
//      this.listSuggestion
// });
//   factory JobSugAll.fromJson(Map<String,dynamic>json){
//     List<SugesstionJobModel>listJobs=[];
//     return JobSugAll(
//      listSuggestion: listJobs,
//     );
//   }
// }

class SugesstionJobModel{
   final String image;
   final String name;
   final String jobTimeType;
   final String compName;
   final String salary;
   SugesstionJobModel( {required this.image,required this.name,required this.jobTimeType,required this.compName,required this.salary});
  factory SugesstionJobModel.fromJson(Map<String,dynamic> json){

    return SugesstionJobModel(
      image: json['image']??'',
      name: json['name']??'',
      jobTimeType: json['job_time_type']??'',
      compName: json['comp_name']??'',
      salary: json['salary']??'',
    );
  }
}
