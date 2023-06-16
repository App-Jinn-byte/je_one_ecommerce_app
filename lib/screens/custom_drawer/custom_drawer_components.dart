import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/res/utils.dart';
import 'package:je_one_ecommerce_app/screens/edit_account_screen/view/edit_account_screen_view.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';


class CustomDrawerComponents {
  Widget drawerHeader(
      {Function? onEdit, String? userName, required BuildContext context}) {
    return DrawerHeader(
      child: GestureDetector(
        onTap: () => onEdit!.call(),
        child: Column(
          children: [
            SizedBox(
              height: sizes!.heightRatio * 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(180),
                    child: PreferenceUtils.getProfileImage().contains("http")
                        ? Image.network(
                            PreferenceUtils.getProfileImage(),
                            fit: BoxFit.fill,
                            height: getHeightRatio() * 40,
                            width: getHeightRatio() * 40,
                            errorBuilder: (context, exception, stackTrack) =>
                                Image.asset(Assets.profileDummyIcon,
                                    fit: BoxFit.fill,
                                    width: getHeightRatio() * 50,
                                    height: getHeightRatio() * 50),
                            loadingBuilder: (BuildContext context, Widget child,
                                ImageChunkEvent? loadingProgress) {
                              if (loadingProgress == null) {
                                return child;
                              }
                              return Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                      : null,
                                ),
                              );
                            },
                          )
                        : Image.asset(
                            Assets.profileDummyIcon,
                            height: getHeightRatio() * 60,
                            width: getHeightRatio() * 60,
                            fit: BoxFit.fill,
                          )),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Image.asset(
                    Assets.crossIcon,
                    height: sizes!.heightRatio * 13,
                  ),
                )
              ],
            ),
            SizedBox(
              height: getHeightRatio() * 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyText.XL(
                  "Jhon Willams",
                  bold: true,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditAccountScreenView()));
                  },
                  child: Image.asset(
                    Assets.editIcon,
                    height: sizes!.heightRatio * 13,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget menuItem(
      {required String title, required bool selected, var onPress}) {
    return Ink(
      child: GestureDetector(
        onTap: () {
          if (onPress != null) {
            onPress();
          }
        },
        child: Container(
          height: sizes!.heightRatio * 42,
          width: sizes!.widthRatio * 235,
          margin: EdgeInsets.symmetric(
              horizontal: sizes!.widthRatio * 15,
              vertical: sizes!.heightRatio * 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadowColor,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
              color: selected ? AppColors.buttonColor : Colors.white),
          child: Row(
            children: [
              SizedBox(
                width: getWidthRatio() * 20,
              ),
              MyText.M(
                title,
                bold: true,
                color:
                    selected ? AppColors.whiteColor : AppColors.darkGreyColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
