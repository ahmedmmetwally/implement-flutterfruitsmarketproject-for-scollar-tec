import 'package:flutter/material.dart';

class CustomeText  extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;


  CustomeText({required this.text,this.color,this.fontWeight, this.fontSize,this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
    text,style: TextStyle(color:color,fontWeight:fontWeight,fontSize:fontSize),textAlign: textAlign,
    );
  }
}
