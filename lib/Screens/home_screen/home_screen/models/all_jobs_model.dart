//
// class AllJobModel {
//   final int id;
//   final String name;
//   final String image;
//   final String about;
//   AllJobModel({
//     required this.id,
//     required this.name,
//     required this.image,
//     required this.about,
//
//   });
//   factory AllJobModel.fromJson(Map<String, dynamic> json) {
//     return AllJobModel(
//       id: json['id'],
//       name: json['name'],
//       image: json['image'],
//       about: json['about'],
//     );
//   }
// }


class AllJobModel{
  final String image;
  final String name;
  final String jobTimeType;
  final String compName;
  final String salary;
  final String location;
  final int id;
  AllJobModel({required this.location,required this.id, required this.image,required this.name,required this.jobTimeType,required this.compName,required this.salary});
  factory AllJobModel.fromJson(Map<String,dynamic> json){

    return AllJobModel(
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
