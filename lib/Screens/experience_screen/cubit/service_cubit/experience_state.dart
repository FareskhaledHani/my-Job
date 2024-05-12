part of 'experience_cubit.dart';

@immutable
abstract class ExperienceState {}

class ExperienceInitial extends ExperienceState {}
class ExperienceSuccess extends ExperienceState {}
class ExperienceLoading extends ExperienceState {}
class ExperienceFailure extends ExperienceState {
  final String errorMessage;
  ExperienceFailure({required this.errorMessage});
}
