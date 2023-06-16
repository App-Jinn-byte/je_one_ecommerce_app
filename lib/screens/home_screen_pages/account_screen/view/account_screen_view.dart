import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/custom_drawer/custom_drawer.dart';
import 'package:je_one_ecommerce_app/screens/edit_account_screen/view/edit_account_screen_view.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';


class AccountScreenView extends StatelessWidget {
  AccountScreenView({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: const CustomDrawer(),
        appBar: CommonWidgets.customAppBar(
            title: "Account",
            leadingIcon: Assets.hamburgerIcon,
            onTapLeadingIcon: () {
              _scaffoldKey.currentState?.openDrawer();
            }),
        body: SizedBox(
            width: sizes!.width,
            height: sizes!.height,
            child: SingleChildScrollView(
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: getHeightRatio() * 120,
                          height: getHeightRatio() * 120,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.greyBorderColor, width: 1.5),
                            shape: BoxShape.circle,
                            // image:  DecorationImage(
                            //     fit: BoxFit.fill,
                            //     image:  AssetImage(Assets.profileImage)
                            // )
                          ),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(getHeightRatio() * 65.0),
                            child:
                                // editProfileProvide.profileImage != null
                                //     ? Image.file(editProfileProvide.profileImage!,
                                //     fit: BoxFit.fill,
                                //     width: getHeightRatio() * 50,
                                //     height: getHeightRatio() * 50)
                                //     : PreferenceUtils.getProfileImage()
                                //     .contains("http")
                                //     ? Image.network(
                                //   PreferenceUtils.getProfileImage(),
                                //   fit: BoxFit.fill,
                                //   width: getHeightRatio() * 50,
                                //   height: getHeightRatio() * 50,
                                //   errorBuilder: (context, exception,
                                //       stackTrack) =>
                                //       Image.asset(Assets.profileAvatar,
                                //           fit: BoxFit.fill,
                                //           width: getHeightRatio() * 50,
                                //           height: getHeightRatio() * 50),
                                //   loadingBuilder: (BuildContext context,
                                //       Widget child,
                                //       ImageChunkEvent? loadingProgress) {
                                //     if (loadingProgress == null) {
                                //       return child;
                                //     }
                                //     return Center(
                                //       child: CircularProgressIndicator(
                                //         value: loadingProgress
                                //             .expectedTotalBytes !=
                                //             null
                                //             ? loadingProgress
                                //             .cumulativeBytesLoaded /
                                //             loadingProgress
                                //                 .expectedTotalBytes!
                                //             : null,
                                //       ),
                                //     );
                                //   },
                                // )
                                //     :
                                Image.asset(Assets.profileDummyIcon02,
                                    fit: BoxFit.fill,
                                    width: getHeightRatio() * 50,
                                    height: getHeightRatio() * 50),
                          ),
                        ),
                        Positioned(
                          width: getHeightRatio() * 30,
                          height: getHeightRatio() * 30,
                          bottom: getHeightRatio() * 7,
                          right: getHeightRatio() + 2,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EditAccountScreenView(),
                              ));
                              // print("Opening bottom Sheet");
                              // var sheetController = _scaffoldKey.currentState
                              //     ?.showBottomSheet(
                              //         (context) => BottomSheetWidget(
                              //       onCamera: () {
                              //         editProfileProvide.openCamera(
                              //             context: context, imageCheck: 0);
                              //         // Navigator.of(context).pop();
                              //       },
                              //       onGallery: () {
                              //         editProfileProvide.openGallery(
                              //             context: context, imageCheck: 0);
                              //       },));
                              // // On Closure of bottom sheet:
                              // sheetController?.closed.then((value) {
                              //
                              //   setState(() {
                              //
                              //   });
                              //
                              //   print("Bottom Sheet Closed");
                              // });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                border: Border.all(
                                    color: AppColors.greyBorderColor,
                                    width: 1.5),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                  child: Image.asset(
                                Assets.editIcon,
                                height: sizes!.heightRatio * 17,
                              )
                                  // child: Image.asset(
                                  //   Assets.iconEditProfile,
                                  //   height: getHeightRatio() * 15,
                                  //   width: getHeightRatio() * 15,
                                  // )
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    _textNameRow(text: "Full Name", textValue: "Jhonn whick"),
                    CommonWidgets.divider(verticalSpacing: 50),
                    _textNameRow(
                        text: "Email Address",
                        textValue: "Jhonwhick@gmail.com"),
                    CommonWidgets.divider(verticalSpacing: 50),
                    _textNameRow(
                        text: "Phone Number", textValue: "+123 4658 38565"),
                    CommonWidgets.divider(verticalSpacing: 50),
                    _textNameRow(
                        text: "User Name", textValue: "Jhonn whick342"),
                    CommonWidgets.divider(verticalSpacing: 50),
                    _textNameRow(text: "City", textValue: "City Lorme ipsume"),
                    CommonWidgets.divider(verticalSpacing: 50),
                  ],
                ),
              ),
            )),
      ),
    );
  }

  Widget _textNameRow({required String text, required String textValue}) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      MyText.L(
        "$text:",
        bold: true,
      ),
      MyText.L(
        textValue,
        color: AppColors.darkGreyColor,
      )
    ]);
  }
}
