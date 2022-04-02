import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutterfruitsmarketproject/core/constants.dart';

class CustomeIndicator extends StatelessWidget {
  const CustomeIndicator({Key? key,@required this.dotIndex}) : super(key: key);
 final double? dotIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: dotIndex!,
      decorator:
          DotsDecorator(activeColor: kMainColor, color: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),side: BorderSide(color: kMainColor))),
    );
  }
}
