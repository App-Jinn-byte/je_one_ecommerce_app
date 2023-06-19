import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:je_one_ecommerce_app/widgets/my_text_enums.dart';
import 'package:lottie/lottie.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';

class CommonWidgets {
  static PreferredSize customAppBar({
    required String title,
    String? leadingIcon,
    required VoidCallback onTapLeadingIcon,
    VoidCallback? onTapCart,
  }) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        shadowColor: AppColors.transparentColor,
        leading: GestureDetector(
          onTap: onTapLeadingIcon,
          child: Transform.scale(
            scale: 0.35, // adjust the scale as needed
            child: Image.asset(
              leadingIcon ?? Assets.backArrowIcon,
            ),
          ),
        ),
        centerTitle: true,
        title: MyText(
          title,
          shadow: false,
          fontSize: MyTextSize.XL,
          bold: true,
          color: AppColors.blackColor,
        ),
        actions: [
          GestureDetector(
            onTap: onTapCart,
            child: Transform.scale(
              scale: 0.42,
              child: Image.asset(
                Assets.cartIcon,
                height: sizes!.heightRatio * 22,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static PreferredSize customAppBarWithOneIcon({
    required String title,
    String? leadingIcon,
    required VoidCallback onTapLeadingIcon,
  }) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        shadowColor: AppColors.transparentColor,
        leading: GestureDetector(
          onTap: onTapLeadingIcon,
          child: Transform.scale(
            scale: 0.35, // adjust the scale as needed
            child: Image.asset(
              leadingIcon ?? Assets.backArrowIcon,
            ),
          ),
        ),
        centerTitle: true,
        title: MyText(
          title,
          shadow: false,
          fontSize: MyTextSize.XXL,
          bold: true,
          color: AppColors.blackColor,
        ),
      ),
    );
  }

  static Widget headingWithViewAllButtonRow(
      {required text, required Function onTap}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText.L(
          text,
          shadow: false,
          color: AppColors.blackColor,
          bold: true,
        ),
        GestureDetector(
          onTap: () {
            onTap();
          },
          child: MyText.L(
            "See All",
            shadow: false,
            color: AppColors.appTheme,
            bold: true,
          ),
        ),
      ],
    );
  }

  static Widget productCardWithCartButton(
      {required String productName,
      required productPrice,
      required productSerialNum,
      required var icon,
      Function? onViewProduct}) {
    return Container(
      width: sizes!.widthRatio * 170,
      // height: sizes!.heightRatio * 250.0,
      padding: EdgeInsets.only(bottom: sizes!.heightRatio * 9),
      margin: EdgeInsets.symmetric(
          horizontal: sizes!.widthRatio * 12,
          vertical: sizes!.heightRatio * 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
        // border: Border.all(width: 1.5, color: AppColors.greyBorderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                icon,
                height: sizes!.heightRatio * 123,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Positioned(
                top: sizes!.heightRatio * 5,
                right: 10,
                child: Container(
                  padding: EdgeInsets.all(sizes!.heightRatio * 3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.backgroundGreyColor,
                  ),
                  child: Icon(Icons.favorite_border,
                      color: AppColors.heartGreyColor),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: sizes!.heightRatio * 8,
                horizontal: sizes!.widthRatio * 14),
            child: MyText.XL(
              productName,
              maxLines: 1,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 14),
            child: MyText.S(
              productSerialNum,
              color: AppColors.greyColor,
            ),
          ),
          SizedBox(height: sizes!.heightRatio * 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText.XL(
                  "\$50",
                  bold: true,
                  color: AppColors.appTheme,
                ),
                Container(
                  height: sizes!.heightRatio * 29,
                  width: sizes!.widthRatio * 29,
                  decoration: BoxDecoration(
                    color: AppColors.appTheme,
                    borderRadius: BorderRadius.circular(12),
                    // border: Border.all(
                    //   color: AppColors.greyBorderColor,
                    //   width: 1.2,
                    // ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      if (onViewProduct != null) {
                        onViewProduct();
                      }
                    },
                    icon: Image.asset(
                      Assets
                          .cartWheelIcon, // Replace with your image asset path
                      color: AppColors.whiteColor,
                      height: sizes!.heightRatio * 23,
                      width: sizes!.widthRatio * 23,
                    ),

                    // Icon(
                    //   Icons.shopping_cart,
                    //   color: AppColors.whiteColor,
                    //   size: sizes!.heightRatio * 13,
                    // ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget blogItemCard(
      {required String categoryName,
      required var icon,
      required Function readMoreTap}) {
    return Container(
      width: sizes!.widthRatio * 155,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            icon,
            height: sizes!.heightRatio * 123,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: sizes!.widthRatio * 6,
                top: sizes!.heightRatio * 10,
                right: sizes!.widthRatio * 6),
            child: MyText(
              categoryName,
              bold: true,
              color: AppColors.darkGreyColor,
              maxLines: 2,
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: sizes!.widthRatio * 6,
                top: sizes!.heightRatio * 7,
                right: sizes!.widthRatio * 6),
            child: GestureDetector(
              onTap: () {
                readMoreTap();
              },
              child: MyText(
                'Read More',
                bold: true,
                underline: true,
                color: AppColors.appTheme,
              ),
            ),
          )
        ],
      ),
    );
  }

  static Widget categoryCard({
    required String categoryName,
    required var icon,
  }) {
    return Container(
      width: sizes!.widthRatio * 155,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(width: 1.5, color: AppColors.greyBorderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            icon,
            height: sizes!.heightRatio * 123,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: sizes!.widthRatio * 8, top: sizes!.heightRatio * 6),
            child: MyText.L(
              categoryName,
              bold: true,
              color: AppColors.appTheme,
            ),
          ),
        ],
      ),
    );
  }

  static Widget divider({double? verticalSpacing}) {
    return SizedBox(
      height: verticalSpacing ?? sizes!.heightRatio * 20,
      child: Divider(
        height: 1,
        thickness: 1.1,
        color: AppColors.greyBorderColor,
      ),
    );
  }

  static Widget addToCartButton() {
    return SizedBox(
      height: sizes!.heightRatio * 29,
      width: sizes!.widthRatio * 90,
      child: ElevatedButton(
        onPressed: () {
          // TODO: Add button functionality
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.appTheme,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              Assets.cartIconWhite,
              height: sizes!.heightRatio * 15,
            ),
            SizedBox(
              width: sizes!.widthRatio * 4,
            ),
            MyText.XS(
              'Add To Cart',
              color: AppColors.whiteColor,
            ),
          ],
        ),
      ),
    );
  }

  static Widget addToCartLargeButton({Function? onPressAddToCart}) {
    return Container(
      height: sizes!.heightRatio * 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          onPressAddToCart?.call();
          // TODO: Add button functionality
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.appTheme,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              Assets.cartIconWhite,
              height: sizes!.heightRatio * 20,
            ),
            SizedBox(
              width: sizes!.widthRatio * 15,
            ),
            MyText.L(
              'Add To Cart',
              color: AppColors.whiteColor,
            ),
          ],
        ),
      ),
    );
  }

  static Widget bottomSheet(
      {required BuildContext context,
      required Function? onCamera,
      required Function? onGallery}) {
    return Container(
      height: getHeight() * 0.15,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            'Choose Profile Photo',
            style: TextStyle(
              fontSize: sizes!.extraLargeFontSize,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton.icon(
                icon: const Icon(Icons.camera_alt_outlined,
                    color: AppColors.txtfeildColor),
                onPressed: () => onCamera!(),
                label: const Text('Camera',
                    style: TextStyle(color: AppColors.txtfeildColor)),
              ),
              TextButton.icon(
                icon: const Icon(Icons.image_outlined,
                    color: AppColors.txtfeildColor),
                onPressed: () => onGallery!(),
                label: const Text('Gallery',
                    style: TextStyle(color: AppColors.txtfeildColor)),
              ),
            ],
          )
        ],
      ),
    );
  }

  static Widget showCustomDialog(BuildContext context,
      {required Widget widgetBody}) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0.3, sigmaY: 0.3),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Dialog(
          // surfaceTintColor: AppColors.darkGreyColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: AppColors.transparentColor, width: 0.5)),
          // backgroundColor: AppColors.dialogWhiteColor,
          child: widgetBody,
        ),
      ),
    );
  }

  static Widget customSearchTextField() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppColors.hintTextColor, // set the color of the border
          width: 0.5, // set the width of the border
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: sizes!.width * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sizes!.heightRatio * 6),
            child: Icon(
              Icons.search,
              color: Colors.grey,
              size: sizes!.heightRatio * 18,
            ),

            // Image.asset(
            //   Assets.searchIconUnselected,
            //   color: Colors.grey,
            //   height: sizes!.heightRatio * 18,
            // ),
          ),
          SizedBox(
            width: sizes!.width * 0.01,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'What do you want?',
                hintStyle: TextStyle(
                  color:
                      AppColors.hintTextColor, // set the color of the hint text
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget customText(
      {required text,
      required color,
      @required size,
      @required lines,
      @required fontWeight,
      @required fontSize,
      @required alignment,
      required fontFamily,
      int? maxLines,
      String? textAlign}) {
    maxLines ??= 1;
    textAlign ??= 'notCenter';

    return Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign == 'center' ? TextAlign.center : TextAlign.start,
      style: TextStyle(
        color: color,
        fontSize: fontSize ?? getFontRatio() * 14,
        fontFamily: fontFamily,
      ),
    );
  }

  static Widget optionAppBar({String? title, var icon, Function? onOption}) {
    return Container(
      width: sizes?.width,
      height: getHeight() * .1,
      padding: EdgeInsets.symmetric(horizontal: getWidth() * 0.05),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Assets.headerBackgroundImage), fit: BoxFit.fill),
        // color: AppColors.blueColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Row(
        children: [
          GestureDetector(
              onTap: () {
                if (onOption != null) {
                  onOption.call();
                }
              },
              child: Icon(icon, color: AppColors.whiteColor)),
          SizedBox(width: getHeight() * 0.02),
          SizedBox(
            width: getWidth() * 0.55,
            child: Text(
              title ?? "",
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: sizes?.extraLargeFontSize,
                fontFamily: Assets.robotoBold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget customNameTextField(
      {required placeHolder,
      required String text,
      @required TextEditingController? textEditingController}) {
    return Container(
      width: sizes!.width,
      height: getHeightRatio() * 60,
      padding: const EdgeInsets.only(left: 21, right: 20, top: 15),
      margin: EdgeInsets.symmetric(horizontal: sizes!.pagePadding),
      //vertical: getHeightRatio() * 0, horizontal: getWidthRatio() * 20),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 32,
            offset: const Offset(15, 15),
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: TextField(
          controller: textEditingController,
          maxLines: 2,
          keyboardType: TextInputType.multiline,
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            isDense: true,
            hintText: placeHolder ?? "",
            labelText: text,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelStyle: TextStyle(
                color: AppColors.txtfeildColor,
                fontFamily: Assets.robotoMedium,
                fontSize: getFontRatio() * 14),
            hintStyle: TextStyle(
                color: AppColors.txtfeildColor,
                fontFamily: Assets.robotoRegular,
                fontSize: getFontRatio() * 15),
            contentPadding: EdgeInsets.only(bottom: getHeightRatio() * 0),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  static Widget mainButton(String text,
      {required VoidCallback onPress,
      double? width,
      double? height,
      Color? color}) {
    return Container(
      width: width ?? sizes!.widthRatio * 320,
      height: height ?? sizes!.heightRatio * 45,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        color: color ?? AppColors.buttonColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: TextButton(
        onPressed: () {
          onPress();
        },
        child: MyText.L(
          text,
          shadow: false,
          color: AppColors.btnfeildColor,
        ),
      ),
    );
  }

  static Widget mainTextButton(String text,
      {required VoidCallback onPress, Color? color, bool? underline}) {
    return TextButton(
      onPressed: () {
        onPress();
      },
      child: MyText.M(
        text,
        shadow: false,
        color: color ?? AppColors.buttonColor,
        underline: underline ?? false,
        arialFont: true,
      ),
    );
  }

  static Widget mainButtonWithBorder(String text,
      {required VoidCallback onPress,
      double? width,
      double? height,
      Color? color}) {
    return Container(
      width: width ?? sizes!.widthRatio * 320,
      height: height ?? sizes!.heightRatio * 45,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.buttonColor,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(7)),
        color: color ?? AppColors.buttonColor,
      ),
      child: TextButton(
        onPressed: () {
          onPress();

          // if (onPress != null) {
          //   onPress();
          // }
        },
        child: MyText.XXXL(
          text,
          shadow: false,
          color: AppColors.appTheme,
        ),
      ),
    );
  }

  static Widget mainButtonWithBorderAndIcon(String text, String iconPath,
      {required VoidCallback onPress,
      double? width,
      double? height,
      Color? color,
      Color? textColor,
      Color? buttonBorderColor}) {
    return Container(
      width: width ?? sizes!.widthRatio * 320,
      height: height ?? sizes!.heightRatio * 45,
      decoration: BoxDecoration(
        border: Border.all(
          color: buttonBorderColor ?? AppColors.buttonColor,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(7)),
        color: color ?? AppColors.buttonColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            height: sizes!.height * 0.03,
            width: sizes!.height * 0.03,
          ),
          TextButton(
            onPressed: () {
              onPress();

              // if (onPress != null) {
              //   onPress();
              // }
            },
            child: MyText.L(
              text,
              shadow: false,
              color: textColor ?? Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }

  static Widget customImgTextField(
      {required placeHolder,
      required String text,
      required image,
      @required TextEditingController? textEditingController}) {
    return Container(
      width: sizes!.width,
      height: getHeightRatio() * 60,
      padding: const EdgeInsets.only(left: 21, right: 20, top: 15),
      margin: EdgeInsets.symmetric(horizontal: sizes!.pagePadding),
      //vertical: getHeightRatio() * 0, horizontal: getWidthRatio() * 20),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 32,
            offset: const Offset(15, 15),
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: TextField(
          controller: textEditingController,
          maxLines: 2,
          keyboardType: TextInputType.multiline,
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            isDense: true,
            hintText: placeHolder ?? "",
            labelText: text,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelStyle: TextStyle(
                color: AppColors.txtfeildColor,
                fontFamily: Assets.robotoRegular,
                fontSize: getFontRatio() * 14),
            hintStyle: TextStyle(
                color: AppColors.txtfeildColor,
                fontFamily: Assets.robotoRegular,
                fontSize: getFontRatio() * 15),
            contentPadding: EdgeInsets.only(bottom: getHeightRatio() * 0),
            border: InputBorder.none,
            suffixIcon: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getWidthRatio() * 8,
                  vertical: getHeightRatio() * 8),
              child: Image.asset(
                image,
              ),
            ),
          ),
        ),
      ),
    );
  }

  //
  static Widget customBlueButton(
      {required double height,
      required double width,
      required String text,
      @required Function? press}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        height: height * getHeightRatio(),
        width: width * getWidthRatio(),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color.fromRGBO(0, 63, 154, 1),
            elevation: 1.0,
            side: const BorderSide(
              color: Colors.white,
              width: 0.5,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(27),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          onPressed: () {
            if (press != null) {
              press.call();
            }
          },
          child: Text(
            text.toString(),
            style: TextStyle(
              fontSize: 12 * getFontRatio(),
              color: Colors.white,
              letterSpacing: 1,
              fontFamily: Assets.robotoBold,
            ),
          ),
        ),
      ),
    );
  }

  //
  static Widget customRowButton(
      {required String firstText,
      required String colorText,
      @required Function? press}) {
    return TextButton(
      style: TextButton.styleFrom(),
      onPressed: () {
        if (press != null) {
          press.call();
        }
      },
      child: RichText(
        text: TextSpan(
          text: firstText,
          style: TextStyle(
            fontFamily: Assets.robotoRegular,
            color: const Color.fromRGBO(81, 92, 111, 1),
            fontSize: 12 * getFontRatio(),
            fontWeight: FontWeight.w500,
          ),
          children: [
            TextSpan(
              text: colorText,
              style: TextStyle(
                color: const Color.fromRGBO(0, 63, 154, 1),
                fontFamily: Assets.robotoBold,
                fontSize: 12 * getFontRatio(),
                fontWeight: FontWeight.w800,
                letterSpacing: 0.4,
              ),
            ),
          ],
        ),
      ),
    );
  }

  //
  static Widget customTextField({
    required String hintText,
    @required TextEditingController? controller,
    @required TextInputAction? textInputAction,
    required TextInputType keyboardType,
    double? width,
    double? height,
  }) {
    return Container(
      height: height ?? 50 * getHeightRatio(),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.textFieldBorderColor, width: 1),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
        autofocus: false,
        controller: controller,
        keyboardType: keyboardType,
        textInputAction: textInputAction ?? TextInputAction.done,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.only(left: 15, right: 15, top: 13, bottom: 13),
          isDense: true,
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.textFieldBorderColor,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(7),
          ),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: _buildTextStyle(
              arialFont: true,
              underline: false,
              color: AppColors.hintTextColor,
              fontSize: MyTextSize.L,
              fontWeight: FontWeight.normal),
        ),
      ),
    );
  }

  static Widget customTextFieldWithLabel(
      {required String labeltext,
      required String hintext,
      @required TextEditingController? controller,
      required TextInputType keyboardType}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      height: 60 * getHeightRatio(),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: BorderRadius.circular(27),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
        autofocus: false,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 13),
          isDense: true,
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(27),
          ),
          border: InputBorder.none,
          labelText: labeltext,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(
              fontFamily: Assets.robotoMedium,
              letterSpacing: 1.5,
              color: const Color.fromRGBO(81, 92, 111, .50),
              fontSize: 15.5 * getFontRatio(),
              fontWeight: FontWeight.bold),
          hintText: hintext,
          hintStyle: TextStyle(
              height: 4.0,
              fontFamily: Assets.robotoRegular,
              color: const Color.fromRGBO(81, 92, 111, 1),
              fontSize: 15 * getFontRatio(),
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  static Widget passwordTextField({
    bool? showPassword,
    required String hintText,
    required VoidCallback onClick,
    @required TextEditingController? controller,
    required TextInputType keyboardType,
    double? width,
    double? height,
  }) {
    return Container(
      height: height ?? 50 * getHeightRatio(),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.textFieldBorderColor, width: 1),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
        autofocus: false,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.only(left: 15, right: 15, top: 13, bottom: 13),
          isDense: true,
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.textFieldBorderColor,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(7),
          ),
          border: InputBorder.none,
          hintText: hintText,
          suffixIcon: GestureDetector(
            onTap: onClick,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getWidthRatio() * 10,
                  vertical: getHeightRatio() * 5),
              child: showPassword ?? false
                  ? Icon(Icons.visibility_off,
                      color: AppColors.buttonBlue, size: sizes!.width * 0.055)
                  : Icon(
                      Icons.remove_red_eye,
                      color: AppColors.lightGrey,
                      size: sizes!.width * 0.055,
                    ),
              // child: Image.asset(
              //   hidePassword ? Assets.eyeIcon : Assets.visibleIcon,
              //   height: sizes!.width*0.001,
              //   // cacheHeight: 18,
              //   width: sizes!.width*0.001,
              //   // cacheWidth: 18,
              // ),
            ),
          ),
          hintStyle: _buildTextStyle(
              arialFont: true,
              underline: false,
              color: AppColors.hintTextColor,
              fontSize: MyTextSize.L,
              fontWeight: FontWeight.normal),
        ),
      ),
    );
  }

  static Widget dropDownTextField({
    bool? showPassword,
    required String hintText,
    required VoidCallback onClick,
    @required TextEditingController? controller,
    @required TextInputAction? textInputAction,
    required TextInputType keyboardType,
    double? width,
    double? height,
  }) {
    return Container(
      height: height ?? 50 * getHeightRatio(),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.textFieldBorderColor, width: 1),
        borderRadius: BorderRadius.circular(7),
      ),
      child: TextFormField(
        autofocus: false,
        controller: controller,
        keyboardType: keyboardType,
        textInputAction: textInputAction ?? TextInputAction.done,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.only(left: 15, right: 15, top: 13, bottom: 13),
          isDense: true,
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.textFieldBorderColor,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(7),
          ),
          border: InputBorder.none,
          hintText: hintText,
          suffixIcon: GestureDetector(
            onTap: onClick,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getWidthRatio() * 10,
                  vertical: getHeightRatio() * 5),
              child: Icon(Icons.keyboard_arrow_down_sharp,
                  color: AppColors.lightGrey, size: sizes!.width * 0.065),
            ),
          ),
          hintStyle: _buildTextStyle(
              arialFont: true,
              underline: false,
              color: AppColors.hintTextColor,
              fontSize: MyTextSize.L,
              fontWeight: FontWeight.normal),
        ),
      ),
    );
  }

  static TextStyle _buildTextStyle({
    bool? arialFont,
    bool? underline,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    Function googleFontBuilder = GoogleFonts.nunito;
    if (arialFont ?? false) googleFontBuilder = GoogleFonts.lato;

    return googleFontBuilder(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: FontStyle.normal,
      decoration: underline ?? false ? TextDecoration.underline : null,
      backgroundColor: AppColors.transparentColor,
      // shadows: _textShadows(),
    );
  }

  static Widget customTextFieldForDialogTextField(
      {required String labeltext,
      required String hintext,
      @required TextEditingController? controller,
      required TextInputType keyboardType}) {
    return Container(
      height: sizes!.height * 0.20,
      width: sizes!.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.textFieldBorderColor, width: 1),
        borderRadius: BorderRadius.circular(27),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
        autofocus: false,
        maxLines: 60,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.only(left: 25, right: 25, top: 12, bottom: 8),
          isDense: true,
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 1.0),
            borderRadius: BorderRadius.circular(27),
          ),
          border: InputBorder.none,
          labelText: labeltext,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(
              fontFamily: Assets.robotoMedium,
              letterSpacing: 1.5,
              color: const Color.fromRGBO(81, 92, 111, .50),
              fontSize: 15.5 * getFontRatio(),
              fontWeight: FontWeight.bold),
          hintText: hintext,
          hintStyle: TextStyle(
              // height: 4.0,
              fontFamily: Assets.robotoRegular,
              color: const Color.fromRGBO(81, 92, 111, 1),
              fontSize: 15 * getFontRatio(),
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  //
  static Widget phoneNumberField(
      {required String labeltext,
      required String hintext,
      @required TextEditingController? controller,
      required TextInputType keyboardType}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      height: 60 * getHeightRatio(),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: BorderRadius.circular(27),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(93, 93, 93, 0.08),
            blurRadius: 32,
            offset: Offset(15, 15),
          ),
        ],
      ),
      child: TextFormField(
        autofocus: false,
        controller: controller,
        keyboardType: keyboardType,
        inputFormatters: [LengthLimitingTextInputFormatter(11)],
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          isDense: true,
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(27),
          ),
          border: InputBorder.none,
          labelText: labeltext,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(
              fontFamily: Assets.robotoMedium,
              letterSpacing: 1.5,
              color: const Color.fromRGBO(81, 92, 111, .50),
              fontSize: 15.5 * getFontRatio(),
              fontWeight: FontWeight.bold),
          hintText: hintext,
          hintStyle: TextStyle(
              height: 4.0,
              fontFamily: Assets.robotoRegular,
              color: const Color.fromRGBO(81, 92, 111, 1),
              fontSize: 15 * getFontRatio(),
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  //
  static Widget customPasswordTextField(
      {required String labeltext,
      required String hintext,
      required bool hidePassword,
      required VoidCallback onClick,
      @required TextEditingController? controller,
      required TextInputType keyboardType}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: 60 * getHeightRatio(),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(27),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(93, 93, 93, 0.08),
              blurRadius: 32,
              offset: Offset(15, 15),
            ),
          ],
        ),
        child: TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: hidePassword,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            isDense: true,
            disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(27),
            ),
            border: InputBorder.none,
            labelText: labeltext,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelStyle: TextStyle(
                fontFamily: Assets.robotoMedium,
                letterSpacing: 1.5,
                color: const Color.fromRGBO(81, 92, 111, .50),
                fontSize: 15.5 * getFontRatio(),
                fontWeight: FontWeight.bold),
            hintText: hintext,
            hintStyle: TextStyle(
                height: 4.0,
                fontFamily: Assets.robotoRegular,
                color: const Color.fromRGBO(81, 92, 111, 1),
                fontSize: 15 * getFontRatio(),
                fontWeight: FontWeight.w500),
            suffixIcon: GestureDetector(
              onTap: onClick,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getWidthRatio() * 10,
                    vertical: getHeightRatio() * 5),
                child: hidePassword
                    ? Icon(Icons.visibility_off,
                        color: AppColors.buttonBlue, size: sizes!.width * 0.055)
                    : Icon(
                        Icons.remove_red_eye,
                        color: AppColors.lightGrey,
                        size: sizes!.width * 0.055,
                      ),
                // child: Image.asset(
                //   hidePassword ? Assets.eyeIcon : Assets.visibleIcon,
                //   height: sizes!.width*0.001,
                //   // cacheHeight: 18,
                //   width: sizes!.width*0.001,
                //   // cacheWidth: 18,
                // ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  //
  static Widget borderBox(
      {required Widget child,
      @required EdgeInsets? padding,
      required double width,
      required double height}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: width * getWidthRatio(),
          height: height * getFontRatio(),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
          ),
          padding: padding ?? const EdgeInsets.all(8.0),
          child: Center(child: child),
        ),
      ),
    );
  }

  //
  static Widget imageTextField(
      {required labeltext,
      required hintext,
      required bool isImage,
      required Function onPress,
      @required TextEditingController? controller}) {
    return GestureDetector(
      onTap: () {
        onPress.call();
      },
      child: Container(
        height: 60 * getHeightRatio(),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(27),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(93, 93, 93, 0.08),
              blurRadius: 32,
              offset: Offset(15, 15),
            ),
          ],
        ),
        child: TextFormField(
            controller: controller,
            enabled: false,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 16),
              focusedBorder: InputBorder.none,
              isDense: true,
              border: InputBorder.none,
              labelText: labeltext,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelStyle: TextStyle(
                  fontFamily: Assets.robotoMedium,
                  letterSpacing: 1.5,
                  color: const Color.fromRGBO(81, 92, 111, .50),
                  fontSize: 15.5 * getFontRatio(),
                  fontWeight: FontWeight.bold),
              hintText: hintext,
              hintStyle: TextStyle(
                  height: 3.5,
                  fontFamily: Assets.robotoRegular,
                  color: const Color.fromRGBO(81, 92, 111, 1),
                  fontSize: 15 * getFontRatio(),
                  fontWeight: FontWeight.w500),
              suffixIcon: isImage == true
                  ? Container(
                      width: getWidth() * 0.01,
                      // height: getHeight()*0.01,
                      margin:
                          EdgeInsets.symmetric(horizontal: getWidth() * 0.04),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greyColor),
                        shape: BoxShape.circle,
                      ),
                    )
                  : Image.asset(
                      Assets.checkIcon,
                      height: getWidth() * 0.02,
                      width: getWidth() * 0.1,
                    ),
            )),
      ),
    );
  }

  static Widget addVerticalSpace(double height) {
    return SizedBox(height: height * getHeightRatio());
  }

  static Widget addHorizontalSpace(double width) {
    return SizedBox(width: width * getWidthRatio());
  }

  static Widget loading({double? height, double? width}) {
    return Center(
      child: Container(
        width: width ?? getWidth() * 0.35,
        height: height ?? getHeight() * 0.35,
        child: Lottie.asset(
          Assets.apiLoading,
        ),
      ),
    );
  }

  static Widget noDataText({String? text}) {
    return Center(
      child: Text(
        text ?? "No Job Available",
        maxLines: 1,
        style: TextStyle(
            fontFamily: Assets.robotoBold,
            fontSize: sizes?.largeFontSize,
            color: AppColors.blackColor),
      ),
    );
  }
}

class DifferentColorClickableText extends StatelessWidget {
  const DifferentColorClickableText(
      {Key? key,
      required this.onColorTextPressed,
      required this.text,
      required this.textButton})
      : super(key: key);
  final Function onColorTextPressed;
  final String text;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = _buildTextStyle(
        arialFont: true,
        color: AppColors.blackColorText,
        fontSize: MyTextSize.M);
    TextStyle linkStyle = _buildTextStyle(
        color: AppColors.appTheme, fontSize: MyTextSize.M, arialFont: true);
    return RichText(
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(text: text),
          TextSpan(
              text: textButton,
              style: linkStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('Terms of Service"');
                }),
        ],
      ),
    );
  }

  static TextStyle _buildTextStyle({
    bool? arialFont,
    bool? underline,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    Function googleFontBuilder = GoogleFonts.nunito;
    if (arialFont ?? false) googleFontBuilder = GoogleFonts.lato;

    return googleFontBuilder(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: FontStyle.normal,
      decoration: underline ?? false ? TextDecoration.underline : null,
      backgroundColor: AppColors.transparentColor,
      // shadows: _textShadows(),
    );
  }
}

class DifferentColorText extends StatelessWidget {
  const DifferentColorText({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.thirdText,
    required this.textAlign,
  }) : super(key: key);
  final String firstText;
  final String secondText;
  final String thirdText;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = _buildTextStyle(
        arialFont: true,
        color: AppColors.blackColorText,
        fontSize: MyTextSize.M);
    TextStyle linkStyle = _buildTextStyle(
        color: AppColors.appTheme, fontSize: MyTextSize.M, arialFont: true);
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(text: firstText),
          TextSpan(
              text: secondText,
              style: linkStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('Terms of Service"');
                }),
          TextSpan(text: thirdText),
        ],
      ),
    );
  }

  static TextStyle _buildTextStyle({
    bool? arialFont,
    bool? underline,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    Function googleFontBuilder = GoogleFonts.nunito;
    if (arialFont ?? false) googleFontBuilder = GoogleFonts.lato;

    return googleFontBuilder(
      color: color,
      fontSize: fontSize,

      fontWeight: fontWeight,
      fontStyle: FontStyle.normal,
      decoration: underline ?? false ? TextDecoration.underline : null,
      backgroundColor: AppColors.transparentColor,
      // shadows: _textShadows(),
    );
  }
}
