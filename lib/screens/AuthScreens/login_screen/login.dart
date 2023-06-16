import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/animations/slide_right.dart';
import 'package:je_one_ecommerce_app/main.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/forgot_password/forgot_password_screen.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/login_screen/widgets/back_icon.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailOrNumberController = TextEditingController();
    myFontRatio = MediaQuery.of(context).textScaleFactor > 1.0
        ? 1.0
        : MediaQuery.of(context).size.width / 800;
    initializeResources(context: context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: sizes!.width * 0.08),
          height: sizes?.height,
          width: sizes?.width,
          decoration: BoxDecoration(
            color: AppColors.appBackground,
          ),
          child: Column(
            children: [
              SizedBox(
                height: sizes!.height * 0.05,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: CircularWidget()),
              // Image.asset(Assets.appColorLogo),
              SizedBox(
                height: sizes!.height * 0.07,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.XXL(
                    "Welcome Back",
                    arialFont: false,
                    shadow: false,
                    color: AppColors.blackTextColor,
                    bold: true,
                  )),
              SizedBox(
                height: sizes!.height * 0.017,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.M(
                    "Login to your account",
                    arialFont: false,
                    shadow: false,
                    color: AppColors.darkGreyTextColor,
                  )),
              SizedBox(
                height: sizes!.height * 0.05,
              ),
              CommonWidgets.customTextField(
                  hintText: 'Username',
                  controller: emailOrNumberController,
                  keyboardType: TextInputType.name),
              SizedBox(
                height: sizes!.height * 0.05,
              ),
              CommonWidgets.passwordTextField(
                  hintText: 'Password',
                  controller: emailOrNumberController,
                  keyboardType: TextInputType.name,
                  onClick: () {}),
              Align(
                  alignment: Alignment.centerRight,
                  child: CommonWidgets.mainTextButton("Forgot Password?",
                      onPress: () {
                    Navigator.pushReplacement(
                        context, SlideRightRoute(page: ForgotPasswordScreen()));
                  })),
              SizedBox(
                height: sizes!.height * 0.012,
              ),
              CommonWidgets.mainButton(
                "Login",
                onPress: () {
                  Navigator.pushReplacement(
                      context, SlideRightRoute(page: BottomNavigationScreen()));
                },
                width: sizes!.width,
                height: sizes!.height * 0.07,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: AppColors.dividerColor,
                  )),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: MyText.M(
                      'Or',
                      arialFont: true,
                      color: AppColors.appTheme,
                      shadow: false,
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    color: AppColors.dividerColor,
                  )),
                ],
              ),
              CommonWidgets.mainButtonWithBorderAndIcon(
                  'Continue with Google', Assets.googleIcon,
                  onPress: () {},
                  color: AppColors.transparentColor,
                  textColor: AppColors.blackTextColor,
                  buttonBorderColor: AppColors.textFieldBorderColor),
              SizedBox(
                height: sizes!.height * 0.02,
              ),
              CommonWidgets.mainButtonWithBorderAndIcon(
                  'Continue with Facebook', Assets.fbIcon,
                  onPress: () {},
                  color: AppColors.transparentColor,
                  textColor: AppColors.blackTextColor,
                  buttonBorderColor: AppColors.textFieldBorderColor),
              SizedBox(
                height: sizes!.height * 0.05,
              ),
              Spacer(),
              DifferentColorClickableText(
                onColorTextPressed: () {},
                text: "Don't have an account? ",
                textButton: 'SignUp',
              ),
              SizedBox(
                height: sizes!.height * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }

}
