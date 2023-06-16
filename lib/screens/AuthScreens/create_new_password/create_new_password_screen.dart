import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/animations/slide_right.dart';
import 'package:je_one_ecommerce_app/main.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/password_changed/password_changed_screen.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';
class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({Key? key}) : super(key: key);

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
            children: [
              SizedBox(height: sizes!.height*0.03,),
              Image.asset(Assets.appColorLogo),
              SizedBox(height: sizes!.height*0.03,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.XXL("Create New Password", arialFont:true, shadow: false,color: AppColors.blackTextColor,bold: true,)),
              SizedBox(height: sizes!.height*0.017,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.M("Create Password", arialFont:true, shadow: false, color: AppColors.darkGreyTextColor,)),
              SizedBox(height: sizes!.height*0.012,),

              CommonWidgets.passwordTextField( hintText: 'Enter Password', controller: emailOrNumberController, keyboardType: TextInputType.name, onClick: (){}),
              SizedBox(height: sizes!.height*0.017,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.M("Confirm Password", arialFont:true, shadow: false, color: AppColors.darkGreyTextColor,)),
              SizedBox(height: sizes!.height*0.012,),
              CommonWidgets.passwordTextField(hintText: 'Enter Password', controller: emailOrNumberController, keyboardType: TextInputType.name, onClick: (){} ),
              SizedBox(height: sizes!.height*0.04,),
              CommonWidgets.mainButton("Reset Password", onPress: (){
                Navigator.push(context, SlideRightRoute(page: PasswordChangedScreen()));
              }, width: sizes!.width, height: sizes!.height*0.07,),
            ],
          ),
        ),
      ),
    );
  }
}
