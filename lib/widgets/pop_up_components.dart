import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'common_widgets.dart';

class PopupComponents {
  static Widget welcomeBackScreenCustomPopUp(
    BuildContext context, {
    required Function onPress,
  }) {
    int _value = 1;

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: StatefulBuilder(builder: (context, setState) {
            return Stack(
              alignment: Alignment.center,
              // overflow: Overflow.visible,
              children: [
                Container(
                  height: sizes!.heightRatio * 360,
                  width: sizes!.widthRatio * 316,
                  padding: EdgeInsets.only(
                      left: sizes!.pagePadding,
                      right: sizes!.pagePadding,
                      top: sizes!.pagePadding * 2),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),

                      const Text('Welcome Back!',
                          style: TextStyle(
                              fontFamily: Assets.robotoBold,
                              fontSize: 25,
                              color: AppColors.admintxtColor)),
                      SizedBox(
                        height: sizes!.heightRatio * 10,
                      ),
                      const Text("Your request are sent to admin. Please \n wait for admin approval",
                          style: TextStyle(
                              fontFamily: Assets.poppinsRegular,
                              color: AppColors.admintxtColor)),
                      SizedBox(
                        height: sizes!.heightRatio * 10,
                      ),

                      CommonWidgets.mainButton("Close",onPress: (){Navigator.pop(context);})
                    ],
                  ),
                ),
              ],
            );
          })),
    );
  }
}
