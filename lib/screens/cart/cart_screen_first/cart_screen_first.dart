import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/animations/slide_right.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/cart/cart_screen_first/widgets/widgets.dart';
import 'package:je_one_ecommerce_app/screens/cart/cart_screen_second/second_cart_screen_view.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/home_screen/view/home_screen_view.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';

class CartScreenFirst extends StatelessWidget {
  const CartScreenFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeResources(context: context);
    return Scaffold(
      appBar: CommonWidgets.customAppBarWithOneIcon(
          title: "Cart",
          leadingIcon: Assets.backArrowIcon,
          onTapLeadingIcon: () {
            Navigator.pop(context);
          }),
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
                height: sizes!.height * 0.03,
              ),
              SizedBox(
                height: sizes!.height * 0.4,
                child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 7.0),
                        child: ProductCard(
                          productName: 'Baby Care Product',
                          productPrice: '25,000TND',
                          itemCount: '1',
                        ),
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText.L(
                    'Sub Total',
                    color: AppColors.blackColorText,
                  ),
                  MyText.L(
                    '25,000 TND',
                    color: AppColors.appTheme,
                  ),
                ],
              ),
              Divider(
                color: AppColors.darkGreyTextColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText.L(
                    'Tax',
                    color: AppColors.blackColorText,
                  ),
                  MyText.L(
                    '250 TND',
                    color: AppColors.appTheme,
                  ),
                ],
              ),
              Divider(
                color: AppColors.darkGreyTextColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText.L(
                    'SHIPPING COST',
                    color: AppColors.blackColorText,
                  ),
                  MyText.L(
                    '5000 TND',
                    color: AppColors.appTheme,
                  ),
                ],
              ),
              Divider(
                color: AppColors.darkGreyTextColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText.L('Total',
                      color: AppColors.blackColorText, bold: true),
                  MyText.L('30,250 TND', color: AppColors.appTheme, bold: true),
                ],
              ),
              SizedBox(
                height: sizes!.height * 0.03,
              ),
              CommonWidgets.mainButton("Validate My order", onPress: () {
                Navigator.pushReplacement(
                    context, SlideRightRoute(page: SecondCartScreenView()));
              }),
              SizedBox(
                height: sizes!.height * 0.03,
              ),
              CommonWidgets.mainButtonWithBorder(
                "Continue My Shopping",
                onPress: () {
                  Navigator.pushReplacement(
                      context, SlideRightRoute(page: HomeScreenView()));
                },
                color: AppColors.transparentColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
