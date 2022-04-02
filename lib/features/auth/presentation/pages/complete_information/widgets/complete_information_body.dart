import 'package:flutter/material.dart';
import 'package:flutterfruitsmarketproject/core/widgets/custom_buttons.dart';
import 'package:flutterfruitsmarketproject/core/widgets/custome_sized_space.dart';

import '../../../../../../core/widgets/custome_text.dart';
import 'complete_info_item.dart';

class CompleteInforamtionBody extends StatelessWidget {
  const CompleteInforamtionBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          VerticalSpace(size: 10),
          CompleteInfoTime(text:"Enter your name",fontSize: 20,fontWeight: FontWeight.w600,textAlign:TextAlign.start,onSaved:onSaved,onChanged: onChanged,maxlines: 2,),
          VerticalSpace(size: 3),
          CompleteInfoTime(text:"Enter your phone number",fontSize: 20,fontWeight: FontWeight.w600,textAlign: TextAlign.start,onSaved:onSaved,onChanged: onChanged,maxlines: 2,),
          VerticalSpace(size: 3),
          CompleteInfoTime(text:"Enter your address",fontSize: 20,fontWeight: FontWeight.w600,textAlign: TextAlign.start,onSaved:onSaved,onChanged: onChanged,maxlines: 5,),
          VerticalSpace(size: 4),
          CustomeGeneralButton(text: "Login",onTap: (){},)
        ],),
      ),
    );
  }

  void onSaved(value) {
    print("onSaved");
  }

  void onChanged(String value) {
    print("onChanged");
  }
}

