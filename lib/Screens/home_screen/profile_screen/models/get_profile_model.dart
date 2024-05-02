import 'package:flutter/foundation.dart';

class GetUserProfileModel {
  final int id;
  final int userId;
  final String name;
  final String email;
  final String? mobile;
  final String? address;
  final String? language;
  final String? interestedWork;
  final String? offlinePlace;
  final String? remotePlace;
  final String? bio;
  final String? education;
  final String? experience;
  final String? personalDetailed;
  final String createdAt;
  final String updatedAt;
  final List<dynamic> portfolio; // List of items for the portfolio

  GetUserProfileModel({
    required this.id,
    required this.userId,
    required this.name,
    required this.email,
    this.mobile,
    this.address,
    this.language,
    this.interestedWork,
    this.offlinePlace,
    this.remotePlace,
    this.bio,
    this.education,
    this.experience,
    this.personalDetailed,
    required this.createdAt,
    required this.updatedAt,
    required this.portfolio,
  });

  factory GetUserProfileModel.fromJson(Map<String, dynamic> json) {
    return GetUserProfileModel(
      id: json['id'],
      userId: json['user_id'],
      name: json['name'],
      email: json['email'],
      mobile: json['mobile'],
      address: json['address'],
      language: json['language'],
      interestedWork: json['interested_work'],
      offlinePlace: json['offline_place'],
      remotePlace: json['remote_place'],
      bio: json['bio'],
      education: json['education'],
      experience: json['experience'],
      personalDetailed: json['personal_detailed'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      portfolio: json['portfolio'] != null ? List<dynamic>.from(json['portfolio']) : [],
    );
  }
}