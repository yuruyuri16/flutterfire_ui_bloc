import 'dart:developer';

import 'package:auth_app/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/auth.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: SignUpPage());

  @override
  Widget build(BuildContext context) {
    return const SignUpView();
  }
}

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  void _onSigningIn(BuildContext context, SigningIn state) {
    log('signing in');
  }

  void _onSignedIn(BuildContext context, SignedIn state) {
    log('${state.user?.email}');
    context.read<AppBloc>().add(AppSignUpCompleted(state.user!));
  }

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      providerConfigs: const [
        EmailProviderConfiguration(),
        GoogleProviderConfiguration(clientId: ''),
      ],
      actions: [
        AuthStateChangeAction<SigningIn>(_onSigningIn),
        AuthStateChangeAction<SignedIn>(_onSignedIn),
      ],
    );
  }
}
