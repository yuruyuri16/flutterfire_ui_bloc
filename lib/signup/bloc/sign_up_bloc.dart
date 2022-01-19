import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(const SignUpState()) {
    on<SignUpCredentialsSubmitted>(_onCredentialsSubmitted);
  }

  void _onCredentialsSubmitted(SignUpCredentialsSubmitted event, Emitter emit) {
    emit(state.copyWith());
  }
}
