import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearing_app/app_event.dart';
import 'package:ulearing_app/app_states.dart';

class AppBloc extends Bloc<AppEvent, AppStates> {
  AppBloc() : super(intiStates()) {
    on<Increment>((event, emit) {
      emit(AppStates(counter: state.counter + 1));
    });
    on<Decrement>((event, emit) {
      emit(AppStates(counter: state.counter - 1));
    });
  }
}
