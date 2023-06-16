import 'package:flutter/cupertino.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/home_screen/view/home_screen_view.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/home_screen/view/view.dart';


class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeResources(context: context);
    return FutureBuilder(
        future: _processingData(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(snapshot.connectionState == ConnectionState.waiting) {
            return Container(
          height: sizes?.height,
          width: sizes?.width,
          color: AppColors.appTheme,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Assets.appLogo),
              SizedBox(
                height: sizes!.height * 0.1,
              ),
              Image.asset(Assets.logoText),
            ],
          ),
        );
          } else {
            return HomeScreenView();
          }
      }
    );
  }
  Future<List> _processingData() {
    return  Future.delayed(Duration(seconds: 15000));
  }
}
