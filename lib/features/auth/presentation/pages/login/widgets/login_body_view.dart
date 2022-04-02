import 'package:flutter/material.dart';
import 'package:flutterfruitsmarketproject/core/constants.dart';
import 'package:flutterfruitsmarketproject/core/utils/size_configration.dart';
import 'package:flutterfruitsmarketproject/core/widgets/custom_buttons.dart';
import 'package:flutterfruitsmarketproject/core/widgets/custome_sized_space.dart';
import 'package:flutterfruitsmarketproject/features/auth/presentation/pages/complete_information/complete_information_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LoginBodyView extends StatelessWidget {
  const LoginBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          children: <Widget>[
            VerticalSpace(size: 10,),
            Container(height:SizeConfig.defaultSize!*30,
                width: SizeConfig.defaultSize!*30,
                child: Image.asset("assets/images/logo.png")),
            Text("Fruit Marked",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w900,color: kMainColor),),
           Expanded(child: SizedBox()),
           Row(children: [
             Flexible(flex: 1,child: Padding(padding: EdgeInsets.symmetric(horizontal: 2),
                 child: CustomeButtonWithIcon(text: "Log in with ",iconData: FontAwesomeIcons.googlePlusG,color: Color(0xFFdb3236),))),
             HorizontalSpace(size:1),
             Flexible(flex: 1,child: Padding(padding: EdgeInsets.symmetric(horizontal: 2,),
                 child: CustomeButtonWithIcon(onTap: (){Get.to(()=>CompleteInformationView());},text: "Log in with ",iconData: FontAwesomeIcons.facebookF,color: Color(0xFF4267B2)))),
           ],),
            Expanded(child: SizedBox()),
          ],
      ),
    );
  }
}
