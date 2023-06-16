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
          padding: EdgeInsets.symmetric(horizontal: sizes!.width*0.08),
          height: sizes?.height,
          width: sizes?.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.onboardingBg),
                      fit: BoxFit.fitWidth
              )
          ),
          child: Column(
            children: [
              SizedBox(height: sizes!.height*0.02,),

              Align(
                  alignment: Alignment.centerRight,
                  child: CommonWidgets.mainTextButton('Skip>', onPress: () {},underline: true)),
              Spacer(),
              Image.asset(Assets.appLogo),
              SizedBox(height: sizes!.height*0.03,),
              MyText.XXL("Welcome to our store", arialFont:true, shadow: false,color: AppColors.whiteColor,),
              SizedBox(height: sizes!.height*0.005,),
              MyText.M("Get your groceries in as fast as one hour", arialFont:true, shadow: false, color: AppColors.greyTextColor,),
              SizedBox(height: sizes!.height*0.04,),
              CommonWidgets.mainButton("Login", onPress: (){
                Navigator.pushReplacement(context, SlideRightRoute(page: LoginScreen()));}, width: sizes!.width*0.85, height: sizes!.height*0.07,),
              SizedBox(height: sizes!.height*0.02,),
              CommonWidgets.mainButtonWithBorder("Create Account", onPress: (){
                Navigator.pushReplacement(context, SlideRightRoute(page: const CreateAccountScreen()));
              }, width: sizes!.width*0.85, height: sizes!.height*0.07,color: AppColors.transparentColor),
              SizedBox(height: sizes!.height*0.05,),
            ],
          ),
        ),
      ),
    );
  }
}
