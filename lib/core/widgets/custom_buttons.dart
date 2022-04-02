import 'package:flutter/material.dart';
import 'package:flutterfruitsmarketproject/core/utils/size_configration.dart';

import '../constants.dart';
import 'custome_sized_space.dart';

class CustomeGeneralButton extends StatelessWidget {
  String? text;
  final VoidCallback? onTap;
  CustomeGeneralButton({@required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        height: 60,width: SizeConfig.screenWidth,
        decoration: BoxDecoration(color: kMainColor,borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(text!,style: TextStyle(fontSize: 15,),textAlign: TextAlign.left,),
        ),
      ),
    );
  }
}
class CustomeButtonWithIcon extends StatelessWidget {
  CustomeButtonWithIcon({this.onTap, required this.iconData,required this.text,required this.color});
  final VoidCallback? onTap;
  final IconData iconData;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: SizeConfig.defaultSize!*6.5,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 2,color: Colors.black26)
        ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData,color: color,),
          HorizontalSpace(size:1.5),
          Text(text,style: TextStyle(fontSize:15,fontWeight: FontWeight.w700,color: Colors.black87))
        ],
      ),
      ),
    );
  }


}

