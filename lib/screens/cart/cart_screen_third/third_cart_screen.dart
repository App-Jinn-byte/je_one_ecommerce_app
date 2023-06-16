import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/animations/slide_right.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/home_screen/view/home_screen_view.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ThirdCartScreen extends StatelessWidget {
  const ThirdCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeResources(context: context);
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
                percent: 1.0,
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
              Container(
                height: sizes!.height * 0.29,
                width: sizes?.width,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border.all(color: AppColors.textFieldBorderColor),
                    borderRadius: BorderRadius.circular(5.0)),
                child: Column(
                  children: [
                    SizedBox(
                      height: sizes!.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MyText.L(
                            'Product Name',
                            color: AppColors.blackColorText,
                            bold: true,
                          ),
                          MyText.L(
                            'Qty',
                            color: AppColors.blackColorText,
                            bold: true,
                          ),
                          MyText.L(
                            'Price',
                            color: AppColors.blackColorText,
                            bold: true,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: sizes!.height * 0.005,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Divider(
                        color: AppColors.darkGreyTextColor,
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      height: sizes!.height * 0.005,
                    ),
                    Container(
                      height: sizes!.height * 0.18,
                      width: sizes?.width,
                      child: ListView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      MyText.M(
                                        'Pack protein clere 50ml',
                                        color: AppColors.blackColorText,
                                        bold: false,
                                      ),
                                      MyText.M(
                                        '2',
                                        color: AppColors.blackColorText,
                                        bold: false,
                                      ),
                                      MyText.M(
                                        '3,500 TND',
                                        color: AppColors.appTheme,
                                        bold: false,
                                      ),
                                    ],
                                  ),
                                ),
                                index == 3
                                    ? SizedBox()
                                    : Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Divider(
                                          color: AppColors.darkGreyTextColor,
                                        ),
                                      ),
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: sizes!.height * 0.05,
              ),
              CommonWidgets.mainButton(
                "Confirm My Order",
                onPress: () {
                  Navigator.pushReplacement(
                      context, SlideRightRoute(page: HomeScreenView()));
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
