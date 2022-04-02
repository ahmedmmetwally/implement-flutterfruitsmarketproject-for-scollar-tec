import 'package:flutter/material.dart';
import 'package:flutterfruitsmarketproject/core/utils/size_configration.dart';

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace({@required this.size});

 final double? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: SizeConfig.defaultSize! * size!);
  }
}



class VerticalSpace extends StatelessWidget {
  const VerticalSpace({@required this.size});

  final double? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: SizeConfig.defaultSize! * size!);
  }
}
