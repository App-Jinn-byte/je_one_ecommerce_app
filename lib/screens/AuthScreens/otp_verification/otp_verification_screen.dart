import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:je_one_ecommerce_app/animations/slide_right.dart';
import 'package:je_one_ecommerce_app/main.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/login_screen/widgets/back_icon.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';
import 'package:je_one_ecommerce_app/widgets/my_text_enums.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

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
            children: [
              SizedBox(height: sizes!.height*0.05,),
              Align(
                  alignment: Alignment.topLeft,
                  child: CircularWidget()),
              SizedBox(height: sizes!.height*0.07,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.XXL("OTP Verification", arialFont:false, shadow: false,color: AppColors.blackTextColor,bold: true,)),
              SizedBox(height: sizes!.height*0.02,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.M("Enter 4 digit code", arialFont:false, shadow: false, color: AppColors.darkGreyTextColor,)), SizedBox(height: sizes!.height*0.012,),
              SizedBox(
                height: sizes!.height * 0.02,
              ),
              OtpTextField(
                numberOfFields: 4,
                  fieldWidth: sizes!.width*0.17,
                filled:true,
                borderColor: AppColors.greyTextColor,
                focusedBorderColor:AppColors.appTheme,
                margin: const EdgeInsets.only(right: 12.0),
                fillColor: AppColors.whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                showCursor: true,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode){
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      }
                  );
                }, // end onSubmit
              ),
              SizedBox(height: sizes!.height*0.03,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: DifferentColorClickableTextForOtpScreen(onColorTextPressed: (){},text: "If you didn’t receive a code! ",textButton: 'Resend',)),
              SizedBox(height: sizes!.height*0.03,),

              CommonWidgets.mainButton("Verify", onPress: (){}, width: sizes!.width, height: sizes!.height*0.07,),

            ],
          ),
        ),
      ),
    );
  }
}
class DifferentColorClickableTextForOtpScreen extends StatelessWidget {
  const DifferentColorClickableTextForOtpScreen(
      {Key? key,
        required this.onColorTextPressed,
        required this.text,
        required this.textButton})
      : super(key: key);
  final Function onColorTextPressed;
  final String text;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = _buildTextStyle(
        arialFont: false,
        color: AppColors.greyTextColor,

        fontSize: MyTextSize.S);
    TextStyle linkStyle = _buildTextStyle(
        fontWeight: FontWeight.bold,
        color: AppColors.appTheme, fontSize: MyTextSize.S, arialFont: false);
    return RichText(
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(text: text),
          TextSpan(
              text: textButton,
              style: linkStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('Terms of Service"');
                }),
        ],
      ),
    );
  }

  static TextStyle _buildTextStyle({
    bool? arialFont,
    bool? underline,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    Function googleFontBuilder = GoogleFonts.nunito;
    if (arialFont ?? false) googleFontBuilder = GoogleFonts.lato;

    return googleFontBuilder(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: FontStyle.normal,
      decoration: underline ?? false ? TextDecoration.underline : null,
      backgroundColor: AppColors.transparentColor,
      // shadows: _textShadows(),
    );
  }
}
