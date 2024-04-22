import 'package:flutter_bloc/flutter_bloc.dart';
import 'get_job_details_state.dart';

class JobDetailsCubit extends Cubit<JobDetailsState> {
  JobDetailsCubit():super(DetailsJobLoading());


   getJobDetails({ required int counter}){
     try {
       if( counter==0){

         emit(DescriptionState());
       }else if (counter==1) {
         emit(CompanyState());
       }
       else {
         emit(PeopleState());
       }
     } catch(e){
       print(e);
     }
   }
}