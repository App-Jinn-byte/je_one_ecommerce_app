import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/animations/slide_right.dart';
import 'package:je_one_ecommerce_app/main.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/create_account/create_account_provider.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/forgot_password/forgot_password_screen.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/login_screen/widgets/back_icon.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';
import 'package:provider/provider.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    myFontRatio = MediaQuery.of(context).textScaleFactor>1.0?1.0:MediaQuery.of(context).size.width/800;
    initializeResources(context: context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: sizes!.width*0.08),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.backgroundImage), // Replace with your own image path
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Consumer<CreateAccountProvider>(
                builder: (context, provider, child) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: sizes!.height*0.05,),
                    Align(
                        alignment: Alignment.topLeft,
                        child: CircularWidget()),
                    SizedBox(height: sizes!.height*0.07,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: MyText.XXL("Create An Account", arialFont:false, shadow: false,color: AppColors.blackTextColor,bold: true,)),
                    SizedBox(height: sizes!.height*0.02,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: MyText.M("Register to your account", arialFont:false, shadow: false, color: AppColors.darkGreyTextColor,)), SizedBox(height: sizes!.height*0.012,),
                    SizedBox(
                      height: sizes!.height * 0.02,
                    ),
                    CommonWidgets.customTextField(
                      prefixIconPath: Assets.profileIcon,
                        height:sizes!.height * 0.07,
                        textInputAction: TextInputAction.next,
                        hintText: 'User Name', controller: provider.nameController, keyboardType: TextInputType.name),
                    SizedBox(height: sizes!.height*0.02,),
                    CommonWidgets.customTextField(
                      prefixIconPath: Assets.profileIcon,
                      height:sizes!.height * 0.07,
                      textInputAction: TextInputAction.next,
                      hintText: 'Last Name', controller: provider.emailController, keyboardType: TextInputType.name,),
                    SizedBox(height: sizes!.height*0.02,),
                    CommonWidgets.customTextField(
                      prefixIconPath: Assets.address,
                      height:sizes!.height * 0.07,
                      textInputAction: TextInputAction.next,
                      hintText: 'Email Address', controller: provider.addressController, keyboardType: TextInputType.name,),
                    SizedBox(height: sizes!.height*0.02,),
                    CommonWidgets.customTextField(
                      prefixIconPath: Assets.location,
                      height:sizes!.height * 0.07,
                      textInputAction: TextInputAction.next,
                      hintText: 'Location', controller: provider.phoneNumberController, keyboardType: TextInputType.name,),
                    SizedBox(height: sizes!.height*0.02,),
                    CommonWidgets.passwordTextField(
                        height:sizes!.height * 0.07,
                        hintText: 'Password',
                        controller: provider.passwordController,
                        keyboardType: TextInputType.name,
                        onClick: () {}),
                    SizedBox(height: sizes!.height*0.02,),
                    CommonWidgets.passwordTextField(
                        height:sizes!.height * 0.07,
                        hintText: 'Confirm Password',
                        controller: provider.confirmPasswordController,
                        keyboardType: TextInputType.name,
                        onClick: () {}),
                    SizedBox(
                      height: sizes!.height * 0.02,
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.check_circle, color: AppColors.appTheme,size: 18.0,),
                                CommonWidgets.mainTextButton("Remember me",color: AppColors.blackTextColor,
                                    onPress: () {}),
                              ],),

                            CommonWidgets.mainTextButton("Forgot Your Password?",
                                onPress: () {
                                  Navigator.pushReplacement(
                                      context, SlideRightRoute(page: ForgotPasswordScreen()));
                                }),
                          ],
                        )),
                    SizedBox(
                      height: sizes!.height * 0.02,
                    ),
                    CommonWidgets.mainButton("Sign Up", onPress: (){}, width: sizes!.width, height: sizes!.height*0.07,),
                    SizedBox(height: sizes!.height*0.05,),
                    DifferentColorClickableText(onColorTextPressed: (){},text: "Already have an account? ",textButton: 'Login',),
                    SizedBox(height: sizes!.height*0.03,),

                  ],
                );
              }
            ),
          ),
        ),
      ),
    );  }
}
