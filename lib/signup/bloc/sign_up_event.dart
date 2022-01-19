part of 'sign_up_bloc.dart';

abstract class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

class SignUpCredentialsSubmitted extends SignUpEvent {
  const SignUpCredentialsSubmitted();
}
