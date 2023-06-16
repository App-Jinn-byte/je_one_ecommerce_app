import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/animations/slide_right.dart';
import 'package:je_one_ecommerce_app/main.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/create_account/create_account_provider.dart';
import 'package:je_one_ecommerce_app/screens/custom_drawer/custom_drawer.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
import 'package:je_one_ecommerce_app/widgets/custom_tab_view_widget/custom_tab_view.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';
import 'package:provider/provider.dart';


class BlogsScreenView extends StatelessWidget {
  BlogsScreenView({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _scaffoldKey,
        drawer: const CustomDrawer(),
        appBar: CommonWidgets.customAppBar(
            title: "Blogs",
            leadingIcon: Assets.hamburgerIcon,
            onTapLeadingIcon: () {
              _scaffoldKey.currentState?.openDrawer();
            }),
        body: SizedBox(
            width: sizes!.width,
            height: sizes!.height,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: sizes!.height * 0.03,
                    ),
                    CommonWidgets.customSearchTextField(),
                    SizedBox(
                      height: sizes!.height * 0.03,
                    ),
                    Container(height: 585, child: CustomTabView())
                  ],
                ),
              ),
            )),
      ),
    ));
  }
}
