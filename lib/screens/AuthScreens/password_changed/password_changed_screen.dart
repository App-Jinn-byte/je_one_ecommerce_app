import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/animations/slide_right.dart';
import 'package:je_one_ecommerce_app/main.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/login_screen/login.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/login_screen/widgets/back_icon.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/otp_verification/otp_verification_screen.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';


class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailOrNumberController = TextEditingController();
    myFontRatio = MediaQuery.of(context).textScaleFactor>1.0?1.0:MediaQuery.of(context).size.width/800;
    initializeResources(context: context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: sizes!.width*0.08),
          height: sizes?.height,
          width: sizes?.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.backgroundImage), // Replace with your own image path
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: sizes!.height*0.05,),
              Align(
                  alignment: Alignment.topLeft,
                  child: CircularWidget()),
              SizedBox(height: sizes!.height*0.07,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.XXL("Password Changed", arialFont:false, shadow: false,color: AppColors.blackTextColor,bold: true,)),
              SizedBox(height: sizes!.height*0.02,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.M("Your password has been changed successfully", maxLines:2,arialFont:false, shadow: false, color: AppColors.darkGreyTextColor,textAlign: TextAlign.start,)), SizedBox(height: sizes!.height*0.012,),
              SizedBox(
                height: sizes!.height * 0.04,
              ),
              Image.asset(Assets.lockImage, height: sizes!.height*0.15, width: sizes!.height*0.15,),
              SizedBox(height: sizes!.height*0.05,),
              CommonWidgets.mainButton("Login", onPress: (){Navigator.pushReplacement(context, SlideRightRoute(page: OtpVerificationScreen()));}, width: sizes!.width, height: sizes!.height*0.07,),

            ],
          ),
        ),
      ),
    );
  }
}
