import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/animations/slide_right.dart';
import 'package:je_one_ecommerce_app/main.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/login_screen/login.dart';
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
          decoration: BoxDecoration(
            color: AppColors.appBackground,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.checkMark, height: sizes!.height*0.2, width: sizes!.height*0.2,),
              SizedBox(height: sizes!.height*0.02,),
              MyText.XXL("Password Change!", arialFont:true, shadow: false,color: AppColors.blackTextColor,bold: true,),
              SizedBox(height: sizes!.height*0.02,),
              MyText.M("Your Password Has Been Change Successfully", arialFont:true, shadow: false, color: AppColors.darkBlueText,maxLines: 2,),
              SizedBox(height: sizes!.height*0.03,),
              CommonWidgets.mainButton("Log-in", onPress: (){
                Navigator.pushReplacement(context, SlideRightRoute(page: LoginScreen()));
              }, width: sizes!.width, height: sizes!.height*0.07,),
            ],
          ),
        ),
      ),
    );
  }
}
