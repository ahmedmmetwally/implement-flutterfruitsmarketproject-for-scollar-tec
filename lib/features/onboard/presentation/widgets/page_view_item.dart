import 'package:flutter/material.dart';
import 'package:flutterfruitsmarketproject/core/utils/size_configration.dart';
import 'package:flutterfruitsmarketproject/core/widgets/custome_sized_space.dart';

class PageViewItem extends StatelessWidget {
  PageViewItem({this.image, this.title, this.subtitle});
  String? image;
  String? title;
  String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      const VerticalSpace(size:20),
      Container(height: SizeConfig.defaultSize!*20,child: Image.asset(image!)),
      const VerticalSpace(size:5),
      Text(title!,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
      const VerticalSpace(size:2),
      Text(subtitle!,style: TextStyle(fontSize: 18,)),
    ]
    );
  }
}
