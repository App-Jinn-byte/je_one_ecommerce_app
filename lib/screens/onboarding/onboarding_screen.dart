import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/animations/slide_right.dart';
import 'package:je_one_ecommerce_app/main.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/create_account/create_account_provider.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/create_account/create_account_screen.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/login_screen/login.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
import 'package:je_one_ecommerce_app/widgets/custom_tab_view_widget/custom_tab_view.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';
import 'package:provider/provider.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    myFontRatio = MediaQuery.of(context).textScaleFactor>1.0?1.0:MediaQuery.of(context).size.width/800;
    initializeResources(context: context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: sizes!.width*0.05),
          height: sizes?.height,
          width: sizes?.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.backgroundImage), // Replace with your own image path
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: sizes!.height*0.02,),
              Image.asset(Assets.getStartedScreenMainImage, fit: BoxFit.cover,height: sizes!.height*0.6, width: sizes!.height*0.6,),
              SizedBox(height: sizes!.height*0.03,),
              MyText.XXL("Buy & Sell\nBest Gadgets", arialFont:true, shadow: false,color: AppColors.appTheme,bold: true,),
              SizedBox(height: sizes!.height*0.005,),
              MyText.M("Find the Best Deals, Access exclusive deals and add\nactivities to make your travel budget-friendly.", arialFont:true,maxLines: 2, shadow: false, color: AppColors.blackColorGetStartedScreenText,),
              SizedBox(height: sizes!.height*0.04,),
              CommonWidgets.mainButton("Get Started", onPress: (){
                Navigator.pushReplacement(context, SlideRightRoute(page: LoginScreen()));}, width: sizes!.width*0.85, height: sizes!.height*0.07,),
              // SizedBox(height: sizes!.height*0.02,),
            ],
          ),
        ),
      ),
    );
  }
}
