import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/blog_details_screen/view/blog_details_screen_view.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';
import 'package:provider/provider.dart';
import 'provider/custom_tab_view_provider.dart';

class CustomTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CustomTabViewProvider(),
      child: Scaffold(
        body: Container(
          width: sizes!.width,
          height: sizes!.height,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Consumer<CustomTabViewProvider>(
                      builder: (context, buttonProvider, child) => textButton(
                          onTap: () => buttonProvider.selectedIndex = 0,
                          isSelected:
                              buttonProvider.selectedIndex == 0 ? true : false,
                          text: "Blogs",
                          buttonColor: buttonProvider.selectedIndex == 0
                              ? AppColors.appTheme // Highlight selected button
                              : Colors.grey)),
                  SizedBox(
                    width: sizes!.widthRatio * 20,
                  ),
                  Consumer<CustomTabViewProvider>(
                    builder: (context, buttonProvider, child) => textButton(
                        onTap: () => buttonProvider.selectedIndex = 1,
                        isSelected:
                            buttonProvider.selectedIndex == 1 ? true : false,
                        text: "Book Mark",
                        buttonColor: buttonProvider.selectedIndex == 1
                            ? AppColors.appTheme // Highlight selected button
                            : Colors.grey),
                  ),
                ],
              ),
              Consumer<CustomTabViewProvider>(
                builder: (context, buttonProvider, child) {
                  if (buttonProvider.selectedIndex == 0) {
                    return SingleChildScrollView(
                      child: Container(
                        child: Column(
                          children: [
                            CommonWidgets.divider(verticalSpacing: 40),
                            SizedBox(
                              height: sizes!.heightRatio * 40.0,
                              width: double.infinity,
                              child: ListView.builder(
                                  itemCount: 8,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return GestureDetector(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (_) => BrandProductsScreenView()));
                                      },
                                      child: categoryButton(
                                          onTap: () {},
                                          text: categoryList[index]),
                                    );
                                  }),
                            ),
                            SizedBox(
                              height: sizes!.heightRatio * 25,
                            ),
                            Container(
                              height: 410,
                              child: GridView.builder(
                                itemCount: 8,
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2, // Two items per row
                                        crossAxisSpacing: sizes!.widthRatio *
                                            12, // Space between columns
                                        mainAxisSpacing:
                                            sizes!.heightRatio * 18,
                                        childAspectRatio: sizes!.heightRatio *
                                            0.6 // Space between rows
                                        ),
                                itemBuilder: (BuildContext context, int index) {
                                  return CommonWidgets.blogItemCard(
                                      readMoreTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             BlogDetailsScreenView()));
                                      },
                                      categoryName: productNames[index],
                                      icon: productDummyImages[index]);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: sizes!.heightRatio * 25,
                          ),
                          SizedBox(
                            height: 500,
                            child: GridView.builder(
                              itemCount: 8,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2, // Two items per row
                                      crossAxisSpacing: sizes!.widthRatio *
                                          12, // Space between columns
                                      mainAxisSpacing: sizes!.heightRatio * 18,
                                      childAspectRatio: sizes!.heightRatio *
                                          0.6 // Space between rows
                                      ),
                              itemBuilder: (BuildContext context, int index) {
                                return CommonWidgets.blogItemCard(
                                    readMoreTap: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             BlogDetailsScreenView()));
                                    },
                                    categoryName: productNames[index],
                                    icon: productDummyImages[index]);
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget brandIconContainer({required image, required text}) {
    return Column(
      children: [
        Container(
            height: sizes!.heightRatio * 70,
            width: sizes!.widthRatio * 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
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
            padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 10),
            // decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(4),
            //     border: Border.all(color: AppColors.lightGreyColor, width: 2)),
            child: Image.asset(image)),
      ],
    );
  }

  var categoryList = [
    "All",
    "Category 1",
    "Category 2",
    "Category 3",
    "Category 4",
    "Category 5",
    "Category 6",
    "Category 7",
  ];

  var featureCategoryListText = [
    "Aromathrapy",
    "Beauty Care ",
    "Baby Care",
    "Hair Care",
    "Face Mask",
    "Face Care"
  ];

  final List productNames = [
    "Lorem ipsum doloras",
    "Lorem ipsum doloras",
    "Lorem ipsum doloras",
    "Lorem ipsum doloras",
    "Lorem ipsum doloras",
    "Lorem ipsum doloras",
    "Lorem ipsum doloras",
    "Lorem ipsum doloras",
  ];
  final List productDummyImages = [
    Assets.categoryDummyImg01,
    Assets.categoryDummyImg02,
    Assets.categoryDummyImg03,
    Assets.categoryDummyImg04,
    Assets.categoryDummyImg05,
    Assets.categoryDummyImg06,
    Assets.categoryDummyImg07,
    Assets.categoryDummyImg08,
  ];

  Widget textButton(
      {required String text,
      required Function onTap,
      Color? buttonColor,
      required bool isSelected}) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.greyBorderColor, width: 1),
            borderRadius: isSelected ? null : BorderRadius.circular(6)),
        child: ElevatedButton(
          onPressed: () {
            onTap();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor ?? AppColors.appTheme,
            elevation: 0,
            padding: EdgeInsets.symmetric(vertical: sizes!.heightRatio * 10),
          ),
          child: MyText.L(
            text,
            color: AppColors.whiteColor,
            shadow: false, // add the text for the button
          ),
        ),
      ),
    );
  }

  Widget categoryButton(
      {required String text, required Function onTap, Color? buttonColor}) {
    return Container(
      width: sizes!.widthRatio * 100,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 7),
        child: ElevatedButton(
          onPressed: () {
            onTap();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor ?? AppColors.appTheme,
            elevation: 0,
            padding: EdgeInsets.symmetric(
                vertical: sizes!.heightRatio * 0, horizontal: 11),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: MyText(
            text,
            color: AppColors.whiteColor,
            maxLines: 1,
            shadow: false, // add the text for the button
          ),
        ),
      ),
    );
  }
}
