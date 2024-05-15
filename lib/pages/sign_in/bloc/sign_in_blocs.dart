import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearing_app/pages/sign_in/bloc/sign_in_events.dart';
import 'package:ulearing_app/pages/sign_in/bloc/sign_in_states.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const SignInState()) {
    // on<EmailEvent>((event, emit) {
    //   emit(state.copyWith(email: event.email));
    // });
    on<EmailEvent>(_emilEvent);
    on<PasswordEvent>(_passwordEvent);
    // on<PasswordEvent>((event, emit) {
    //   emit(state.copyWith(password: event.password));
    // });
  }

  void _emilEvent(EmailEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(
      PasswordEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(password: event.password));
  }
}
