import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/category_internal_screen/view/category_internal_screen_view.dart';
import 'package:je_one_ecommerce_app/widgets/carousel_slider_widget.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';



class CategoriesScreenView extends StatelessWidget {
  CategoriesScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CommonWidgets.customAppBar(
          title: "Categories",
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
                  height: sizes!.height * 0.035,
                ),
                GridView.builder(
                  itemCount: categoryDummyImages.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: sizes!.heightRatio * 12,
                    crossAxisSpacing: sizes!.widthRatio * 12,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    // Build each item based on its index
                    return GestureDetector(
                      onTap: () {
                        switch (index) {
                          case 0:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CategoryInternalScreenView()));

                            break;
                          case 1:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CategoryInternalScreenView()));

                            break;
                          case 2:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CategoryInternalScreenView()));
                            break;
                          case 3:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CategoryInternalScreenView()));
                            break;
                          case 4:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CategoryInternalScreenView()));
                            break;
                          case 5:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CategoryInternalScreenView()));
                            break;
                          case 6:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CategoryInternalScreenView()));
                            break;
                          case 7:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CategoryInternalScreenView()));
                            break;
                        }
                      },
                      child: CommonWidgets.categoryCard(
                          categoryName: categoryNames[index],
                          icon: categoryDummyImages[index]),
                    );
                  },
                ),
                SizedBox(
                  height: sizes!.height * 0.035,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  final List categoryDummyImages = [
    Assets.categoryDummyImg01,
    Assets.categoryDummyImg02,
    Assets.categoryDummyImg03,
    Assets.categoryDummyImg04,
    Assets.categoryDummyImg05,
    Assets.categoryDummyImg06,
    Assets.categoryDummyImg07,
    Assets.categoryDummyImg08,
  ];
  final List categoryNames = [
    "Skin Care",
    "Baby Care",
    "Health Care",
    "Hair Care",
    "Skin Care",
    "Baby Care",
    "Health Care",
    "Body Care",
  ];
}
