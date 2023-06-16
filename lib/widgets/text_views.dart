import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/res/res.dart';

class TextView {
  static Text getJumboText(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        fontSize: sizes!.jumboFontSize,
        fontWeight: FontWeight.w700,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }

  static Text getExtraLargeText(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        fontSize: sizes!.extraLargeFontSize,
        fontWeight: FontWeight.w700,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }

  static Text getMediumText(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        fontSize: sizes!.mediumFontSize,
        fontWeight: FontWeight.w600,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }

  static Text getMediumTextLight(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        fontSize: sizes!.mediumFontSize,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }

  static Text getMediumText16(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        fontSize: sizes!.mediumLargeFontSize,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }

  static Text getMediumTextItalic(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        fontSize: sizes!.mediumFontSize,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
        fontStyle: FontStyle.italic,
        color: color,
      ),
    );
  }

  //
  // static Text getLargeText(final text, final fontFamily,
  //     {@required final color, final TextAlign textAlign = TextAlign.start, @required final lines}) {
  //   return Text(
  //     text,
  //     textAlign: textAlign,
  //     softWrap: true,
  //     maxLines: lines,
  //     style: TextStyle(
  //       fontSize: sizes!.largeFontSize,
  //       fontWeight: FontWeight.w600,
  //       fontFamily: fontFamily,
  //       color: color,
  //     ),
  //   );
  // }

  static Text getLargeText(final text, final fontFamily,
      {@required final color,
      required final double size,
      final TextAlign textAlign = TextAlign.start,
      @required final lines,
      @required dynamic fontWeight}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        fontSize: getFontRatio() * size,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }

  static Text getLargeText20(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines,
      @required dynamic fontWeight}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        fontSize: sizes!.largeFontSize20,
        fontWeight: fontWeight ?? FontWeight.w600,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }

  static Text getRegularText(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines}) {
    return Text(
      text ?? "",
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,

      overflow: TextOverflow.ellipsis,
      style: TextStyle(

        fontSize: sizes!.regularFontSize,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
        color: color,

      ),
    );
  }

  static Text getRegularTextUnderline(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
          fontSize: sizes!.mediumFontSize,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          color: color,
          decoration: TextDecoration.underline),
    );
  }

  static Text getRegularS17W600Text(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        fontSize: sizes!.mediumFontSize,
        fontWeight: FontWeight.w600,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }

  static Text getRegularTextTooHeavy(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines,
      @required final customFontSize}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: sizes!.extraLargeFontSize * customFontSize,
        fontWeight: FontWeight.w700,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }

  static Text getRegularTextHeavy(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: sizes!.mediumFontSize,
        fontWeight: FontWeight.w900,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }

  static Text getSmallText(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        fontSize: sizes!.smallFontSize,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }

  static Text getSmallText12(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,

      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: sizes!.smallFontSize12,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }

  static Text getSmallText11(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        fontSize: sizes!.smallFontSize11,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }

  static Text getSmallTextCenterAlign(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.center,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        fontSize: sizes!.smallFontSize,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }

  static Text getExtraSmallText(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        fontSize: sizes!.extraSmallFontSize,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }

  static Text getSmallTextHeavy(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        fontSize: sizes!.smallFontSize,
        fontWeight: FontWeight.w700,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }

  static Text getRegular13Text(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.center,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        fontSize: sizes!.regularFontSize,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }

  static Text getRegular13TextHeavy(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        fontSize: sizes!.regularFontSize,
        fontWeight: FontWeight.w900,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }

  static Text getDropdownText(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontFamily: fontFamily,
        fontSize: sizes!.mediumFontSize,
        color: color,
      ),
    );
  }

  static Text getDropdownHintText(final text, final fontFamily,
      {@required final color,
      final TextAlign textAlign = TextAlign.start,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: sizes!.regularFontSize,
          fontFamily: fontFamily,
          color: color),
    );
  }

  static Text standardText(final text, final fontFamily, final fontSize,
      {@required final color,
      final TextAlign textAlign = TextAlign.center,
      @required final lines}) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      maxLines: lines,
      style: TextStyle(
        fontSize: getFontRatio() * fontSize,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }
}
