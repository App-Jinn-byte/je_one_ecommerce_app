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
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
import 'package:je_one_ecommerce_app/widgets/custom_tab_view_widget/custom_tab_view.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';
import 'package:provider/provider.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Get the initial index from the route arguments, if any
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args != null && args is int) {
      _currentIndex = args;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: AppColors.appTheme,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage(
                Assets.homeIconUnselected,
              ),
              size: 24,
              color: AppColors.appTheme,
            ),
            activeIcon: const ImageIcon(
              AssetImage(Assets.homeIconSelected),
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(Assets.searchIconUnselected)),
              label: 'Search',
              activeIcon: ImageIcon(
                AssetImage(Assets.searchIconSelected),
              )),
          const BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(Assets.blogIconUnSelected),
            ),
            label: 'Blogs',
            activeIcon: ImageIcon(AssetImage(Assets.blogIconSelected)),
          ),
          const BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.discountIconUnselected)),
            label: 'Discount',
            activeIcon: ImageIcon(AssetImage(Assets.discountIconSelected)),
          ),
          const BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.accountIconUnselected)),
            label: 'Account',
            activeIcon: ImageIcon(AssetImage(Assets.accountIconSelected)),
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreenView(),
          SearchScreenView(),
          BlogsScreenView(),
          // DiscountsProductPageView(),
          AccountScreenView()
        ],
      ),
    );
  }
}
