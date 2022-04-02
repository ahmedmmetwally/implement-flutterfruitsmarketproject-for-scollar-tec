import 'package:flutter/material.dart';
import 'package:flutterfruitsmarketproject/core/utils/size_configration.dart';
import 'package:flutterfruitsmarketproject/features/onboard/presentation/on_boarding_view.dart';
import 'package:get/get.dart';

class SplashBodyView extends StatefulWidget {
  const SplashBodyView({Key? key}) : super(key: key);

  @override
  _SplashBodyViewState createState() => _SplashBodyViewState();
}

class _SplashBodyViewState extends State<SplashBodyView>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);
         animationController?.repeat(reverse: true);
        goToNextView();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        children: [
          Spacer(),
            FadeTransition(opacity: fadingAnimation!,
                 child:Text(
                  "Fruit Market",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
          Image.asset("assets/images/splash_view_image.png"),
        ],
      ),
    );
  }
}

void goToNextView() {
 Future.delayed(Duration(seconds: 4), (){Get.to(()=>OnBordignView(),transition: Transition.fade);});
}
