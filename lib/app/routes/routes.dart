import 'package:auth_app/app/app.dart';
import 'package:auth_app/home/home.dart';
import 'package:auth_app/signup/signup.dart';
import 'package:flutter/widgets.dart';

List<Page> onGenerateAppViewPages(AppState state, List<Page> pages) {
  if (state is AppAuthenticated) {
    return [HomePage.page()];
  } else {
    return [SignUpPage.page()];
  }
}
