import 'dart:io';

import 'package:dio/dio.dart';

// class PostApplyJob {
//   final String name;
//   final String email;
//   final String mobile;
//   final String workType;
//   final File cvFile;
//   final File otherFile;
//   final int jobId;
//   final int userId;
//
//   PostApplyJob({
//     required this.name,
//     required this.email,
//     required this.mobile,
//     required this.workType,
//     required this.cvFile,
//     required this.otherFile,
//     required this.jobId,
//     required this.userId,
//   });
//
//   // Method to convert the model to a Map that can be used for JSON serialization
//   Map<String, dynamic> toJson() {
//     return {
//       'name': name,
//       'email': email,
//       'mobile': mobile,
//       'work_type': workType,
//       'cv_file': cvFile.path, // Assuming cvFile is a File object representing the CV file
//       'other_file': otherFile.path, // Assuming otherFile is a File object representing another file
//       'jobs_id': jobId,
//       'user_id': userId,
//     };
//   }
// }
class PostApplyJob {
  final File imageFile;
  final String name;
  final String email;
  final String mobile;
  final String workType;
  final File cvFile;
  final File otherFile;
  final int jobId;
  final int userId;

  PostApplyJob(this.imageFile, this.name, this.email, this.mobile,
      this.workType, this.cvFile, this.otherFile, this.jobId, this.userId);

  FormData toFormData() {
    return FormData.fromMap({
      'cv_file': MultipartFile.fromFileSync(imageFile.path,
          filename: imageFile.path.split('/').last),
      'name': name,
      'email': email,
      'mobile': mobile,
      'work_type': workType,
      // 'cv_file': cvFile.path, // Assuming cvFile is a File object representing the CV file
      'other_file': MultipartFile.fromFileSync(imageFile.path,
          filename: imageFile.path.split('/').last),
      'jobs_id': jobId,
      'user_id': userId,
    });
  }
}
