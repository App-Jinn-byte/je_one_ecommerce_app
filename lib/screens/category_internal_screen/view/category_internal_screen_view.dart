import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/products_screen_pages/view/products_screen_view.dart';
import 'package:je_one_ecommerce_app/widgets/carousel_slider_widget.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';



class CategoryInternalScreenView extends StatelessWidget {
  CategoryInternalScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CommonWidgets.customAppBar(
          title: "Category Details",
          onTapLeadingIcon: () {
            Navigator.pop(context);
          }),
      body: SizedBox(
        width: sizes!.width,
        height: sizes!.height,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 20),
            child: Column(
              children: [
                SizedBox(
                  height: sizes!.height * 0.035,
                ),
                CommonWidgets.customSearchTextField(),
                SizedBox(
                  height: sizes!.height * 0.035,
                ),
                const CarouselSliderWidget(
                  sliderImages: [
                    Assets.offerBannerDummyImage,
                    Assets.offerBannerDummyImage02,
                  ],
                ),
                SizedBox(
                  height: sizes!.height * 0.03,
                ),
                CommonWidgets.headingWithViewAllButtonRow(
                    text: "Skin Care Products",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductsScreenView()));
                    }),
                SizedBox(
                  height: sizes!.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonWidgets.productCardWithCartButton(
                        productName: productNames[0],
                        productPrice: "25,000 TND",
                        icon: productDummyImages[0]),
                    CommonWidgets.productCardWithCartButton(
                        productName: productNames[1],
                        productPrice: "25,000 TND",
                        icon: productDummyImages[2]),
                  ],
                ),
                SizedBox(
                  height: sizes!.height * 0.03,
                ),
                CommonWidgets.headingWithViewAllButtonRow(
                    text: "Baby Products", onTap: () {}),
                SizedBox(
                  height: sizes!.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonWidgets.productCardWithCartButton(
                        productName: productNames[0],
                        productPrice: "25,000 TND",
                        icon: productDummyImages[0]),
                    CommonWidgets.productCardWithCartButton(
                        productName: productNames[1],
                        productPrice: "25,000 TND",
                        icon: productDummyImages[2]),
                  ],
                ),
                SizedBox(
                  height: sizes!.height * 0.03,
                ),
                CommonWidgets.headingWithViewAllButtonRow(
                    text: "Sun Care Products", onTap: () {}),
                SizedBox(
                  height: sizes!.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonWidgets.productCardWithCartButton(
                        productName: productNames[0],
                        productPrice: "25,000 TND",
                        icon: productDummyImages[0]),
                    CommonWidgets.productCardWithCartButton(
                        productName: productNames[1],
                        productPrice: "25,000 TND",
                        icon: productDummyImages[2]),
                  ],
                ),
                SizedBox(
                  height: sizes!.height * 0.03,
                ),
                CommonWidgets.headingWithViewAllButtonRow(
                    text: "Health Care Products", onTap: () {}),
                SizedBox(
                  height: sizes!.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonWidgets.productCardWithCartButton(
                        productName: productNames[0],
                        productPrice: "25,000 TND",
                        icon: productDummyImages[0]),
                    CommonWidgets.productCardWithCartButton(
                        productName: productNames[1],
                        productPrice: "25,000 TND",
                        icon: productDummyImages[2]),
                  ],
                ),
                SizedBox(
                  height: sizes!.height * 0.03,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  final List productDummyImages = [
    Assets.productDummyImage01,
    Assets.productDummyImage02,
    Assets.productDummyImage02,
    Assets.productDummyImage01,
    Assets.productDummyImage02,
    Assets.productDummyImage01,
    Assets.productDummyImage02,
    Assets.productDummyImage01,
  ];

  final List productNames = [
    "Face Mask Product",
    "Face Care Product",
    "Face Mask Product",
    "Face Care Product",
    "Face Mask Product",
    "Face Care Product",
    "Face Mask Product",
    "Face Care Product",
  ];
}
