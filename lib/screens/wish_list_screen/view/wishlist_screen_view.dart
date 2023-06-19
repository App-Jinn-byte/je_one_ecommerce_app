// import 'package:flutter/material.dart';
// import 'package:je_one_ecommerce_app/res/assets.dart';
// import 'package:je_one_ecommerce_app/res/res.dart';
// import 'package:je_one_ecommerce_app/screens/product_detail_screen/view/product_detail_screen_view.dart';
// import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
//
//
// class WishListScreenView extends StatelessWidget {
//   WishListScreenView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       appBar: CommonWidgets.customAppBar(
//           title: "Wishlist",
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
//               children: [
//                 SizedBox(
//                   height: sizes!.height * 0.035,
//                 ),
//                 GridView.builder(
//                   itemCount: 8,
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2, // Two items per row
//                       crossAxisSpacing:
//                           sizes!.widthRatio * 12, // Space between columns
//                       mainAxisSpacing: sizes!.heightRatio * 18,
//                       childAspectRatio:
//                           sizes!.heightRatio * 0.54 // Space between rows
//                       ),
//                   itemBuilder: (BuildContext context, int index) {
//                     return CommonWidgets.productCardWithCartButton(
//                         productName: productNames[index],
//                         productPrice: "25,000 TND",
//                         onViewProduct: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) =>
//                                       ProductDetailScreenView()));
//                         },
//                         icon: productDummyImages[index]);
//                   },
//                 ),
//                 SizedBox(
//                   height: sizes!.height * 0.03,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ));
//   }
//
//   final List productDummyImages = [
//     Assets.productDummyImage01,
//     Assets.productDummyImage02,
//     Assets.productDummyImage02,
//     Assets.productDummyImage01,
//     Assets.productDummyImage02,
//     Assets.productDummyImage01,
//     Assets.productDummyImage02,
//     Assets.productDummyImage01,
//   ];
//
//   final List productNames = [
//     "Face Mask Product",
//     "Face Care Product",
//     "Face Mask Product",
//     "Face Care Product",
//     "Face Mask Product",
//     "Face Care Product",
//     "Face Mask Product",
//     "Face Care Product",
//   ];
// }
