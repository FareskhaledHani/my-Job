// import 'package:bloc/bloc.dart';
// import 'package:finalproject/Screens/home_screen/models/suggestion_job.dart';
// import 'package:meta/meta.dart';
// import '../services.dart';
// part 'get_suggetions_job_state.dart';
//
// class GetSuggestionsJobCubit extends Cubit<GetSuggestionsJobState> {
//   final ApiServices apiServices;
//   GetSuggestionsJobCubit(this.apiServices) : super(GetSuggestionsJobInitial());
//   Future<void>getSuggestionJob()async{
//     emit(GetSuggestionsJobLoadingState());
//     try{
//       await apiServices.getSuggestionJob();
//       emit(GetSuggestionsJobSuccess());
//     }catch(e){
//       emit(GetSuggestionsJobFailureState(errorMessage:e.toString() ));
//     }
//   }
// }
