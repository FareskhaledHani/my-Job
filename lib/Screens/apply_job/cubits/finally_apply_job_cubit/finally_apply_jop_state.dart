part of 'finally_apply_jop_cubit.dart';

@immutable
abstract class FinallyApplyJopState {}

class FinallyApplyJopInitial extends FinallyApplyJopState {}
class FinallyApplyJopLoading extends FinallyApplyJopState {}
class FinallyApplyJopSuccess extends FinallyApplyJopState {}
class FinallyApplyJopFailure extends FinallyApplyJopState {
  final String errorMessage;
  FinallyApplyJopFailure({required this.errorMessage});
}
