import 'package:flutter/material.dart';
import 'package:flutterfruitsmarketproject/features/auth/presentation/pages/login/widgets/login_body_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBodyView(),
    );
  }
}