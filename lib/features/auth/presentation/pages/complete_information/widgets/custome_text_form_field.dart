import 'package:flutter/material.dart';

class CustomeTextFormField extends StatelessWidget {
  final ValueSetter onSaved;
  final void Function(String value) onChanged;
  final int? maxLines;
  final Widget? suffixIcon;
  final TextInputType? inputType;

 const CustomeTextFormField(
      {required this.onSaved, required this.onChanged, this.maxLines,this.suffixIcon,this.inputType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      keyboardType: inputType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        // enabledBorder:OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(20),
        //     borderSide: BorderSide(width: 1,color: Colors.white))
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
          borderSide:BorderSide(color:Colors.black12,width: 2),),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(width:2,color: Colors.black38)
            ,borderRadius: BorderRadius.circular(8)),
        border:  OutlineInputBorder(borderSide: BorderSide(width:2,color: Color(0xffcccccc))
            ,borderRadius: BorderRadius.circular(8)),

        //0xffcccccc
      ),
    );
  }
}
