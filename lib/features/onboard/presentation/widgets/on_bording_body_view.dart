import 'package:flutter/cupertino.dart';
import 'package:flutterfruitsmarketproject/core/utils/size_configration.dart';
import 'package:flutterfruitsmarketproject/core/widgets/custom_buttons.dart';
import 'package:flutterfruitsmarketproject/features/auth/presentation/pages/login/login_view.dart';
import 'package:flutterfruitsmarketproject/features/onboard/presentation/widgets/custome_indicator.dart';
import 'package:get/get.dart';

import 'custome_page_view.dart';

class OnBordingViewBody extends StatefulWidget {
  const OnBordingViewBody({Key? key}) : super(key: key);

  @override
  State<OnBordingViewBody> createState() => _OnBordingViewBodyState();
}

class _OnBordingViewBodyState extends State<OnBordingViewBody> {
  PageController? pageController;
  @override
  void initState() {
    pageController=PageController(initialPage: 0)..addListener(() {
      setState(() {

    });});
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomePageView(pageController:pageController),
        Positioned(
            bottom: SizeConfig.defaultSize! * 20,
            right: 0,
            left: 0,
            child: CustomeIndicator(dotIndex: pageController!.hasClients?pageController?.page:0,)),
        Visibility(
          visible: pageController!.hasClients? (pageController?.page==2 ? false:true):true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 30,
            child: Text(
              "skip",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xff898989),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Positioned(
            bottom: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            left: SizeConfig.defaultSize! * 10,
            child: CustomeGeneralButton(onTap: (){
              if(pageController!.page!<2)(
              pageController!.nextPage(duration: Duration(milliseconds: 500), curve:Curves.easeInSine)
              );
              else {
                    Get.to(() => LoginView(),duration: Duration(milliseconds: 500),transition: Transition.rightToLeft);
                  }
                },
              text: pageController!.hasClients? (pageController?.page==2?"Get Started":"Next"):"Next"
            ))
      ],
    );
  }
}
