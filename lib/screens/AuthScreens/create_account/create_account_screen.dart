import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/main.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/create_account/create_account_provider.dart';
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
          decoration: BoxDecoration(
            color: AppColors.appBackground,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Consumer<CreateAccountProvider>(
                builder: (context, provider, child) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: sizes!.height*0.03,),
                    Image.asset(Assets.appColorLogo),
                    SizedBox(height: sizes!.height*0.03,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: MyText.XXL("Create Account", arialFont:true, shadow: false,color: AppColors.blackTextColor,bold: true,)),
                    SizedBox(height: sizes!.height*0.017,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: MyText.M("Full Name *", arialFont:true, shadow: false, color: AppColors.darkGreyTextColor,)), SizedBox(height: sizes!.height*0.012,),
                    CommonWidgets.customTextField(
                        textInputAction: TextInputAction.next,
                        hintText: 'Enter Your Name', controller: provider.nameController, keyboardType: TextInputType.name),
                    SizedBox(height: sizes!.height*0.017,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: MyText.M("Email Address *", arialFont:true, shadow: false, color: AppColors.darkGreyTextColor,)),
                    SizedBox(height: sizes!.height*0.012,),
                    CommonWidgets.customTextField(
                      textInputAction: TextInputAction.next,
                      hintText: '@email.com', controller: provider.emailController, keyboardType: TextInputType.name,),
                    SizedBox(height: sizes!.height*0.017,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: MyText.M("Telephone *", arialFont:true, shadow: false, color: AppColors.darkGreyTextColor,)),
                    SizedBox(height: sizes!.height*0.012,),
                    CommonWidgets.customTextField(
                      textInputAction: TextInputAction.next,
                      hintText: '+00-000-0000000', controller: provider.telephoneController, keyboardType: TextInputType.name,),
                    SizedBox(height: sizes!.height*0.017,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: MyText.M("Phone Number", arialFont:true, shadow: false, color: AppColors.darkGreyTextColor,)),
                    SizedBox(height: sizes!.height*0.012,),
                    CommonWidgets.customTextField(
                      textInputAction: TextInputAction.next,
                      hintText: '+00-000-0000000', controller: provider.phoneNumberController, keyboardType: TextInputType.name,),
                    SizedBox(height: sizes!.height*0.017,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: MyText.M("City *", arialFont:true, shadow: false, color: AppColors.darkGreyTextColor,)),
                    SizedBox(height: sizes!.height*0.012,),
                    CommonWidgets.dropDownTextField(
                      textInputAction: TextInputAction.next,

                        hintText: 'Select City', controller: provider.cityController, keyboardType: TextInputType.name,onClick: (){}),
                    SizedBox(height: sizes!.height*0.017,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: MyText.M("Password *", arialFont:true, shadow: false, color: AppColors.darkGreyTextColor,)),
                    SizedBox(height: sizes!.height*0.012,),
                    CommonWidgets.customTextField(
                      textInputAction: TextInputAction.next,
                      hintText: '', controller: provider.passwordController, keyboardType: TextInputType.name,),
                    SizedBox(height: sizes!.height*0.017,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: MyText.M("Confirm Password *", arialFont:true, shadow: false, color: AppColors.darkGreyTextColor,)),
                    SizedBox(height: sizes!.height*0.012,),
                    CommonWidgets.customTextField(
                      textInputAction: TextInputAction.next,

                      hintText: '', controller: provider.confirmPasswordController, keyboardType: TextInputType.name,),
                    SizedBox(height: sizes!.height*0.017,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: MyText.M("Delivery Address *", arialFont:true, shadow: false, color: AppColors.darkGreyTextColor,)),
                    SizedBox(height: sizes!.height*0.012,),
                    CommonWidgets.customTextField(
                      textInputAction: TextInputAction.next,
                      hintText: 'Lorim Ipsum , Doloir, 00000', controller: provider.addressController, keyboardType: TextInputType.name,),
                    SizedBox(height: sizes!.height*0.05,),
                    CommonWidgets.mainButton("Create Account", onPress: (){}, width: sizes!.width, height: sizes!.height*0.07,),
                    SizedBox(height: sizes!.height*0.08,),
                    DifferentColorClickableText(onColorTextPressed: (){},text: "Allready have an account? ",textButton: 'Login',),
                    SizedBox(height: sizes!.height*0.01,),

                  ],
                );
              }
            ),
          ),
        ),
      ),
    );  }
}
