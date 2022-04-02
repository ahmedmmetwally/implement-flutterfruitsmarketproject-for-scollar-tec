import 'package:flutter/material.dart';
import 'package:flutterfruitsmarketproject/core/widgets/custome_sized_space.dart';

import 'custome_text_form_field.dart';

class CompleteInfoTime  extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;
  final ValueSetter onSaved;
  final void Function(String value) onChanged;
  final int?maxlines;


  CompleteInfoTime({required this.text,this.color,this.fontWeight, this.fontSize,this.textAlign,required this.onSaved,required this.onChanged,this.maxlines});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget>[
        Text(
          text,style: TextStyle(color:color,fontWeight:fontWeight,fontSize:fontSize),textAlign:textAlign ,),
        VerticalSpace(size: 2),
        CustomeTextFormField(onSaved:onSaved,onChanged:onChanged,maxLines: maxlines,),
      ]
    );
  }
}
