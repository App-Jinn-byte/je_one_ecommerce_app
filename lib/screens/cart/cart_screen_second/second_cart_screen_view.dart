import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/animations/slide_right.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/cart/cart_screen_third/third_cart_screen.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SecondCartScreenView extends StatelessWidget {
  const SecondCartScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeResources(context: context);
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      appBar: CommonWidgets.customAppBarWithOneIcon(
          title: "Cart",
          leadingIcon: Assets.backArrowIcon,
          onTapLeadingIcon: () {}),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: sizes!.width * 0.08),
          height: sizes?.height,
          width: sizes?.width,
          decoration: BoxDecoration(
            color: AppColors.appBackground,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: sizes!.height * 0.03,
              ),
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width * 0.82,
                animation: true,
                lineHeight: 8.0,
                animationDuration: 2000,
                percent: 0.5,
                barRadius: Radius.circular(10.0),
                progressColor: AppColors.appTheme,
              ),
              SizedBox(
                height: sizes!.height * 0.03,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.XXL(
                    "Confirmation",
                    arialFont: true,
                    shadow: false,
                    color: AppColors.blackTextColor,
                    bold: true,
                  )),
              SizedBox(
                height: sizes!.height * 0.02,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.S(
                    textAlign: TextAlign.left,
                    "Pour enregistrer votre commande merci de saisir vos merci coordonnées. Vous recevrez un appel d'un de nos conseiller pour la confirmation sous 24h max.",
                    arialFont: true,
                    shadow: false,
                    color: AppColors.blackTextColor,
                    bold: false,
                    maxLines: 3,
                  )),
              SizedBox(
                height: sizes!.height * 0.025,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.M(
                    "Your Name",
                    arialFont: true,
                    shadow: false,
                    color: AppColors.darkGreyTextColor,
                  )),
              SizedBox(
                height: sizes!.height * 0.012,
              ),
              CommonWidgets.customTextField(
                  textInputAction: TextInputAction.next,
                  hintText: 'Enter Your Name',
                  controller: textEditingController,
                  keyboardType: TextInputType.name),
              SizedBox(
                height: sizes!.height * 0.017,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.M(
                    "Telephone *",
                    arialFont: true,
                    shadow: false,
                    color: AppColors.darkGreyTextColor,
                  )),
              SizedBox(
                height: sizes!.height * 0.012,
              ),
              CommonWidgets.customTextField(
                textInputAction: TextInputAction.next,
                hintText: '+00-000-0000000',
                controller: textEditingController,
                keyboardType: TextInputType.name,
              ),
              SizedBox(
                height: sizes!.height * 0.017,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.M(
                    "City *",
                    arialFont: true,
                    shadow: false,
                    color: AppColors.darkGreyTextColor,
                  )),
              SizedBox(
                height: sizes!.height * 0.012,
              ),
              CommonWidgets.dropDownTextField(
                  textInputAction: TextInputAction.next,
                  hintText: 'Select City',
                  controller: textEditingController,
                  keyboardType: TextInputType.name,
                  onClick: () {}),
              SizedBox(
                height: sizes!.height * 0.017,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.M(
                    "Delivery Address *",
                    arialFont: true,
                    shadow: false,
                    color: AppColors.darkGreyTextColor,
                  )),
              SizedBox(
                height: sizes!.height * 0.012,
              ),
              CommonWidgets.customTextField(
                textInputAction: TextInputAction.next,
                hintText: 'Lorim Ipsum , Doloir, 00000',
                controller: textEditingController,
                keyboardType: TextInputType.name,
              ),
              SizedBox(
                height: sizes!.height * 0.05,
              ),
              CommonWidgets.mainButton(
                "Next",
                onPress: () {
                  Navigator.pushReplacement(
                      context, SlideRightRoute(page: ThirdCartScreen()));
                },
                width: sizes!.width,
                height: sizes!.height * 0.07,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
