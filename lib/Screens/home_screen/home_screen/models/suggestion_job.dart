

class SuggestionJobModel{
   final String image;
   final String name;
   final String jobTimeType;
   final String compName;
   final String salary;
   final String location;
   final int id;
   SuggestionJobModel({required this.location,required this.id, required this.image,required this.name,required this.jobTimeType,required this.compName,required this.salary});
  factory SuggestionJobModel.fromJson(Map<String,dynamic> json){

    return SuggestionJobModel(
      image: json['image']??'',
      name: json['name']??'',
      jobTimeType: json['job_time_type']??'',
      compName: json['comp_name']??'',
      salary: json['salary']??'',
      location: json['location']??'',
      id: json['id']??'',
    );
  }
}
