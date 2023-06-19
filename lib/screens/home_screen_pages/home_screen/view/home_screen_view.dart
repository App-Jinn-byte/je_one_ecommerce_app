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
import 'package:je_one_ecommerce_app/screens/home_screen_pages/home_screen/view/widget/widget.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/search_screen/view/search_screen_view.dart';
import 'package:je_one_ecommerce_app/screens/product_detail_screen/view/product_detail_screen_view.dart';
import 'package:je_one_ecommerce_app/widgets/carousel_slider_widget.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
import 'package:je_one_ecommerce_app/widgets/custom_tab_view_widget/custom_tab_view.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';
import 'package:provider/provider.dart';

class HomeScreenView extends StatelessWidget {
  HomeScreenView({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: const CustomDrawer(),
        // appBar: CommonWidgets.customAppBar(
        //     title: "Home",
        //     leadingIcon: Assets.hamburgerIcon,
        //     onTapCart: () {
        //       Navigator.push(context, SlideRightRoute(page: CartScreenFirst()));
        //     },
        //     onTapLeadingIcon: () {
        //       _scaffoldKey.currentState?.openDrawer();
        //     }),
        body: SizedBox(
            width: sizes!.width,
            height: sizes!.height,
            child: SingleChildScrollView(
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: sizes!.heightRatio * 8,
                    ),
                    MyText.XXL("Best Smart"),
                    SizedBox(
                      height: sizes!.heightRatio * 4,
                    ),
                    MyText.XXL(
                      "Electric Gadgets",
                      bold: true,
                      color: AppColors.appTheme,
                    ),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    CommonWidgets.customSearchTextField(),
                    SizedBox(
                      height: sizes!.heightRatio * 24,
                    ),
                    MyText.XL(
                      "Hot deals",
                      bold: true,
                    ),
                    SizedBox(
                      height: sizes!.heightRatio * 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => BannerOfferScreenView()));
                      },
                      child: const CarouselSliderWidget(
                        sliderImages: [
                          Assets.offerBannerDummyImage,
                          Assets.offerBannerDummyImage02,
                          Assets.offerBannerDummyImage
                        ],
                      ),
                    ),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    horizontalProductListView(),
                    // categorySelectionList(),
                    // SizedBox(
                    //   height: sizes!.height * 0.035,
                    // ),
                    SizedBox(
                      height: sizes!.heightRatio * 24,
                    ),
                    CommonWidgets.headingWithViewAllButtonRow(
                        text: "Popular Products",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ProductDetailScreenView()));
                        }),
                    SizedBox(
                      height: sizes!.heightRatio * 16,
                    ),
                    popularProductsList(),
                    // featureCategoryList(),

                    // FractionallySizedBox(
                    //   widthFactor: 1.08,
                    //   child: GestureDetector(
                    //     onTap: () {
                    //       // Navigator.push(
                    //       //     context,
                    //       //     MaterialPageRoute(
                    //       //         builder: (context) =>
                    //       //             BannerOfferScreenView()));
                    //     },
                    //     child: Image.asset(
                    //       Assets.offerBannerDummyImage02,
                    //       fit: BoxFit.fill,
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    MyText.XL(
                      "Top Rated Products",
                      bold: true,
                    ),

                    SizedBox(
                      height: sizes!.heightRatio * 16,
                    ),
                    FractionallySizedBox(
                      widthFactor: 1.08,
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             BannerOfferScreenView()));
                        },
                        child: Image.asset(
                          Assets.offerBannerDummyImage02,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: sizes!.heightRatio * 24,
                    ),
                    CommonWidgets.headingWithViewAllButtonRow(
                        text: "On Sale Products",
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             CategoriesScreenView()));
                        }),
                    SizedBox(
                      height: sizes!.heightRatio * 16,
                    ),
                    popularProductsList(),
                    SizedBox(
                      height: sizes!.heightRatio * 24,
                    ),
                    CommonWidgets.headingWithViewAllButtonRow(
                        text: "Popular Products",
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             CategoriesScreenView()));
                        }),
                    SizedBox(
                      height: sizes!.heightRatio * 16,
                    ),
                    popularProductsList(),
                  ],
                ),
              ),
            )),
      ),
    );
  }

  Widget featureCategoryContainer({required image, required text}) {
    return SizedBox(
      width: sizes!.widthRatio * 70,
      child: Column(
        children: [
          SizedBox(
              height: sizes!.heightRatio * 70,
              width: sizes!.widthRatio * 70,
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(4),
              //     border: Border.all(color: AppColors.lightGreyColor, width: 2)),
              child: Image.asset(image)),
          SizedBox(
            height: sizes!.heightRatio * 5,
          ),
          MyText.S(
            text,
            maxLines: 1,
            shadow: false,
          )
        ],
      ),
    );
  }

  Widget popularProductsList() {
    return SizedBox(
      height: sizes!.heightRatio * 260.0,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (
            BuildContext context,
            int index,
          ) {
            return CommonWidgets.productCardWithCartButton(
                productName: popularProductsListText[index],
                productPrice: " \$50",
                icon: popularProductsImages[index],
                productSerialNum: "E5630....");
          }),
    );
  }

  var popularProductsListText = [
    "Samsung Galaxy ",
    "Macbook Pro 2023",
    "Samsung Galaxy ",
  ];
  var popularProductsImages = [
    Assets.popularProductDummyImage01,
    Assets.popularProductDummyImage02,
    Assets.popularProductDummyImage01,
  ];

  var featureCategoryListText = [
    "Watch",
    "Ear Pods ",
    "Mobile",
    "Watch",
  ];

  var featureCategoryIconsList = [
    Assets.featureCategoryImg01,
    Assets.featureCategoryImg02,
    Assets.featureCategoryImg03,
    Assets.featureCategoryImg04,
    Assets.featureCategoryImg01,
    Assets.featureCategoryImg02,
  ];

  var productIconsList = [
    Assets.productDummyIcon01,
    Assets.productDummyIcon02,
    Assets.productDummyIcon03,
    Assets.productDummyIcon01,
  ];

  Widget horizontalProductListView() {
    return SizedBox(
      height: sizes!.heightRatio * 70.0,
      width: double.infinity,
      child: ListView.builder(
          itemCount: productIconsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (_) => BrandProductsScreenView()));
              },
              child: iconTextContainer(
                  image: productIconsList[index],
                  text: featureCategoryListText[index]),
            );
          }),
    );
  }

  Widget iconTextContainer({
    required image,
    required text,
  }) {
    return Container(
      // height: sizes!.heightRatio * 60,
      width: sizes!.widthRatio * 82,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 10),
      padding: EdgeInsets.only(right: sizes!.widthRatio * 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: sizes!.widthRatio * 43,
            height: sizes!.heightRatio * 41,
            // color: Colors.green,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: MyText.XS(
              text,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget featureCategoryList() {
    return SizedBox(
      height: sizes!.heightRatio * 100.0,
      width: double.infinity,
      child: ListView.builder(
          itemCount: featureCategoryListText.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 2),
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CategoryInternalScreenView()));
                },
                child: featureCategoryContainer(
                    image: featureCategoryIconsList[index],
                    text: featureCategoryListText[index]),
              ),
            );
          }),
    );
  }

  Widget categorySelectionBoxes({
    required String text,
  }) {
    return ElevatedButton(
      onPressed: () {
        // Add your button logic here
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.appTheme,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: MyText.S(
        text,
        color: AppColors.whiteColor,
        shadow: false, // add the text for the button
      ),
    );
  }

  Widget categorySelectionList() {
    return Padding(
      padding: EdgeInsets.only(
          left: sizes!.widthRatio * 0, right: sizes!.widthRatio * 0),
      child: SizedBox(
        height: sizes!.heightRatio * 43.0,
        width: double.infinity,
        child: ListView.builder(
          itemCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(right: sizes!.widthRatio * 9.0),
              child: GestureDetector(
                onTap: () {
                  switch (index) {
                    case 0:
                      // Navigator.push(
                      //     context, SlideRightRoute(page: const LatestScreen()));

                      break;
                    case 1:
                      // Navigator.push(
                      //     context, SlideRightRoute(page: const EventsScreen()));

                      break;
                    case 2:
                      // Navigator.push(
                      //     context, SlideRightRoute(page: const OffersScreen()));
                      break;
                  }
                },
                child: categorySelectionBoxes(
                  text: categoryListText[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  final categoryListText = ["Good Plans", "Gift Boxes ", "Baby Boxes"];
}
