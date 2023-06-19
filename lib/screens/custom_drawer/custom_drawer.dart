import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/animations/slide_right.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/AuthScreens/login_screen/login.dart';
import 'package:je_one_ecommerce_app/screens/custom_drawer/custom_drawer_components.dart';
import 'package:je_one_ecommerce_app/screens/custom_drawer/custom_drawer_provider.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:je_one_ecommerce_app/screens/order_history_screen/view/order_history_screen_view.dart';
import 'package:je_one_ecommerce_app/screens/wish_list_screen/view/wishlist_screen_view.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  CustomDrawerComponents customDrawerComponents = CustomDrawerComponents();
  CustomDrawerProvider customDrawerProvider = CustomDrawerProvider();

  @override
  void initState() {
    customDrawerProvider =
        Provider.of<CustomDrawerProvider>(context, listen: false);
    customDrawerProvider.init(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<CustomDrawerProvider>(context, listen: true);
    return Drawer(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customDrawerComponents.drawerHeader(
              context: context,
              userName: customDrawerProvider.fullUserName.toString(),
              onEdit: () {
                updateIndex(customDrawerProvider.index);
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (_) => const EditProfileScreen()));
              }),
          SizedBox(
            height: getHeightRatio() * 15,
          ),
          customDrawerComponents.menuItem(
              title: 'My profile',
              selected: customDrawerProvider.index == 0,
              onPress: () {
                updateIndex(0);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BottomNavigationScreen(),
                    settings: const RouteSettings(
                      arguments: 4,
                    ),
                  ),
                );
              }),
          customDrawerComponents.menuItem(
              title: 'My orders',
              selected: customDrawerProvider.index == 2,
              onPress: () {
                updateIndex(2);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => OrderHistoryScreenView()));
              }),
          // customDrawerComponents.menuItem(
          //     title: 'My wishlist',
          //     selected: customDrawerProvider.index == 3,
          //     onPress: () {
          //       updateIndex(3);
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (_) => WishListScreenView()));
          //     }),
          customDrawerComponents.menuItem(
              title: 'My Bookmarks',
              selected: customDrawerProvider.index == 4,
              onPress: () {
                updateIndex(4);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BottomNavigationScreen(),
                    settings: const RouteSettings(
                      arguments: 2,
                    ),
                  ),
                );
              }),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(
                left: sizes!.widthRatio * 15, bottom: sizes!.heightRatio * 15),
            child: CommonWidgets.mainButton("Logout",
                height: sizes!.heightRatio * 32,
                width: sizes!.widthRatio * 73,
                color: AppColors.logoutRedButtonColor, onPress: () {
              Navigator.pushReplacement(
                  context, SlideRightRoute(page: LoginScreen()));
            }),
          )
        ],
      ),
    );
  }

  updateIndex(int value) {
    setState(() {
      customDrawerProvider.index = value;
    });
  }
}
