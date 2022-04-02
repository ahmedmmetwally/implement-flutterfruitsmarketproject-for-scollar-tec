import 'package:flutter/material.dart';
import 'package:flutterfruitsmarketproject/core/constants.dart';
import 'package:flutterfruitsmarketproject/features/splash/presentaion/widgetss/splash_body_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: SplashBodyView(),
    );
  }
}
