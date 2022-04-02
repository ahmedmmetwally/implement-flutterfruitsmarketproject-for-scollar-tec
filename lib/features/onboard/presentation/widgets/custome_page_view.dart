import 'package:flutter/material.dart';
import 'package:flutterfruitsmarketproject/features/onboard/presentation/widgets/page_view_item.dart';

class CustomePageView extends StatelessWidget {
  CustomePageView({@required this.pageController});
   PageController? pageController;


  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController!,
    children: [
      PageViewItem(image:"assets/images/onboarding1.png",title: "E Shopping",
        subtitle:" iam looking for especial thing to buy it from you",),
      PageViewItem(image:"assets/images/onboarding2.png",title: "E Shopping",
        subtitle:" iam looking for especial thing to buy it from you the mony is importing thing",),
      PageViewItem(image:"assets/images/onboarding3.png",title: "E Shopping",
        subtitle:" iam looking for especial thing to buy it from you",),

    ],
    );
  }


}
