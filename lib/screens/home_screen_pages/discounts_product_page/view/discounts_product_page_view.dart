import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/animations/slide_right.dart';
import 'package:je_one_ecommerce_app/main.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/create_account/create_account_provider.dart';
import 'package:je_one_ecommerce_app/screens/custom_drawer/custom_drawer.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/account_screen/view/account_screen_view.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/blogs_screen/view/blogs_screen_view.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/discounts_product_page/view/discounts_product_page_view.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/home_screen/view/home_screen_view.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/search_screen/view/search_screen_view.dart';
import 'package:je_one_ecommerce_app/screens/product_detail_screen/view/product_detail_screen_view.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
import 'package:je_one_ecommerce_app/widgets/custom_tab_view_widget/custom_tab_view.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';
import 'package:provider/provider.dart';

class DiscountsProductPageView extends StatelessWidget {
  DiscountsProductPageView({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: CommonWidgets.customAppBar(
          title: "Discounts",
          leadingIcon: Assets.hamburgerIcon,
          onTapLeadingIcon: () {
            _scaffoldKey.currentState?.openDrawer();
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
                GridView.builder(
                  itemCount: 8,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Two items per row
                      crossAxisSpacing:
                          sizes!.widthRatio * 12, // Space between columns
                      mainAxisSpacing: sizes!.heightRatio * 18,
                      childAspectRatio:
                          sizes!.heightRatio * 0.54 // Space between rows
                      ),
                  itemBuilder: (BuildContext context, int index) {
                    return CommonWidgets.productCardWithCartButton(
                        productName: productNames[index],
                        productPrice: "25,000 TND",
                        onViewProduct: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ProductDetailScreenView()));
                        },
                        icon: productDummyImages[index]);
                  },
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
