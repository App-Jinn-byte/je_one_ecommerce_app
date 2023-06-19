// import 'package:flutter/material.dart';
// import 'package:je_one_ecommerce_app/res/assets.dart';
// import 'package:je_one_ecommerce_app/res/colors.dart';
// import 'package:je_one_ecommerce_app/res/res.dart';
// import 'package:je_one_ecommerce_app/screens/brand_products_screen/view/brand_products_screen_view.dart';
// import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
// import 'package:je_one_ecommerce_app/widgets/my_text.dart';
//
// class BlogDetailsScreenView extends StatelessWidget {
//   BlogDetailsScreenView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       appBar: CommonWidgets.customAppBar(
//           title: "Blog Details",
//           onTapLeadingIcon: () {
//             Navigator.pop(context);
//           }),
//       body: SizedBox(
//         width: sizes!.width,
//         height: sizes!.height,
//         child: SingleChildScrollView(
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: sizes!.height * 0.035,
//                 ),
//                 FractionallySizedBox(
//                   widthFactor: 1.08,
//                   child: Image.asset(
//                     Assets.offerBannerDummyImage02,
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//                 SizedBox(
//                   height: sizes!.height * 0.01,
//                 ),
//                 Align(
//                   alignment: Alignment.topLeft,
//                   child: MyText.XXL(
//                     "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do etempor.consectetur adipiscielit.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed  do etempor.consectetur adipiscing elit.",
//                     color: AppColors.darkGreyColor,
//                     textAlign: TextAlign.start,
//                     maxLines: 5,
//                   ),
//                 ),
//                 SizedBox(
//                   height: sizes!.height * 0.035,
//                 ),
//                 MyText.XL(
//                   "Brands Logo",
//                   bold: true,
//                 ),
//                 SizedBox(
//                   height: sizes!.height * 0.035,
//                 ),
//                 brandLogosList(),
//                 CommonWidgets.headingWithViewAllButtonRow(
//                     text: "Related Products", onTap: () {}),
//                 SizedBox(
//                   height: sizes!.height * 0.035,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CommonWidgets.productCardWithCartButton(
//                         productName: "Face Mask Product",
//                         productPrice: "25,000 TND",
//                         icon: Assets.popularProductDummyImage01),
//                     CommonWidgets.productCardWithCartButton(
//                         productName: "Face Care Product",
//                         productPrice: "25,000 TND",
//                         icon: Assets.popularProductDummyImage02)
//                   ],
//                 ),
//                 SizedBox(
//                   height: sizes!.height * 0.035,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ));
//   }
//
//   Widget brandLogosList() {
//     return SizedBox(
//       height: sizes!.heightRatio * 100.0,
//       width: double.infinity,
//       child: ListView.builder(
//           itemCount: brandLogoIconsList.length,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (BuildContext context, int index) {
//             return GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (_) => BrandProductsScreenView()));
//               },
//               child: brandIconContainer(
//                   image: brandLogoIconsList[index],
//                   text: featureCategoryListText[index]),
//             );
//           }),
//     );
//   }
//
//   Widget brandIconContainer({required image, required text}) {
//     return Column(
//       children: [
//         Container(
//             height: sizes!.heightRatio * 70,
//             width: sizes!.widthRatio * 70,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(5),
//               boxShadow: [
//                 BoxShadow(
//                   color: AppColors.shadowColor,
//                   spreadRadius: 2,
//                   blurRadius: 10,
//                   offset: Offset(0, 1), // changes position of shadow
//                 ),
//               ],
//             ),
//             margin: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 10),
//             padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 10),
//             // decoration: BoxDecoration(
//             //     borderRadius: BorderRadius.circular(4),
//             //     border: Border.all(color: AppColors.lightGreyColor, width: 2)),
//             child: Image.asset(image)),
//       ],
//     );
//   }
//
//   var brandLogoIconsList = [
//     Assets.profileDummyIcon,
//     Assets.popularProductDummyImage02,
//     Assets.popularProductDummyImage01,
//     Assets.popularProductDummyImage02,
//   ];
//
//   var featureCategoryListText = [
//     "Aromathrapy",
//     "Beauty Care ",
//     "Baby Care",
//     "Hair Care",
//     "Face Mask",
//     "Face Care"
//   ];
// }
