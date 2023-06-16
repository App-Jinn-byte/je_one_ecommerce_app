import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/animations/slide_right.dart';
import 'package:je_one_ecommerce_app/main.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/create_account/create_account_provider.dart';
import 'package:je_one_ecommerce_app/screens/banner_offer_page/view/banner_offer_screen_view.dart';
import 'package:je_one_ecommerce_app/screens/brand_products_screen/view/brand_products_screen_view.dart';
import 'package:je_one_ecommerce_app/screens/cart/cart_screen_first/cart_screen_first.dart';
import 'package:je_one_ecommerce_app/screens/categories_screen/view/categories_screen_view.dart';
import 'package:je_one_ecommerce_app/screens/category_internal_screen/view/category_internal_screen_view.dart';
import 'package:je_one_ecommerce_app/screens/custom_drawer/custom_drawer.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/account_screen/view/account_screen_view.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/blogs_screen/view/blogs_screen_view.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/discounts_product_page/view/discounts_product_page_view.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/home_screen/view/home_screen_view.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/home_screen/view/view.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/search_screen/view/search_screen_view.dart';
import 'package:je_one_ecommerce_app/screens/product_detail_screen/view/product_detail_screen_view.dart';
import 'package:je_one_ecommerce_app/widgets/carousel_slider_widget.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
import 'package:je_one_ecommerce_app/widgets/custom_tab_view_widget/custom_tab_view.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';
import 'package:provider/provider.dart';

class SearchScreenView extends StatelessWidget {
  SearchScreenView({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: CommonWidgets.customAppBar(
          title: "Search",
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: sizes!.height * 0.03,
                  ),
                  CommonWidgets.customSearchTextField(),
                ],
              ),
            ),
          )),
    ));
  }
}
