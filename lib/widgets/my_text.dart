// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:je_one_ecommerce_app/widgets/my_text_enums.dart';

class MyText extends StatelessWidget {
  final String data;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final int? maxLines;
  final double fontSize;
  final Color color;
  final Color? backgroundColor;
  final bool bold;
  final bool italic;
  final bool underline;
  final bool shadow;
  final bool thinFont;
  final bool arialFont;
  final double opacity;

  MyText(
    this.data, {
    this.textAlign = TextAlign.center,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines,
    this.fontSize = MyTextSize.M,
    this.color = Colors.black,
    this.backgroundColor,
    this.bold = false,
    this.italic = false,
    this.underline = false,
    this.shadow = false,
    this.thinFont = false,
    this.arialFont = false,
    this.opacity = 1,
  });

  MyText.S(
    this.data, {
    this.textAlign = TextAlign.center,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines,
    this.color = Colors.black,
    this.backgroundColor,
    this.bold = false,
    this.italic = false,
    this.underline = false,
    this.shadow = false,
    this.thinFont = false,
    this.arialFont = false,
    this.opacity = 1,
  }) : fontSize = MyTextSize.S;

  MyText.M(
    this.data, {
    this.textAlign = TextAlign.center,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines,
    this.color = Colors.black,
    this.backgroundColor,
    this.bold = false,
    this.italic = false,
    this.underline = false,
    this.shadow = false,
    this.thinFont = false,
    this.arialFont = false,
    this.opacity = 1,
  }) : fontSize = MyTextSize.M;

  MyText.XL(
    this.data, {
    this.textAlign = TextAlign.center,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines,
    this.color = Colors.black,
    this.backgroundColor,
    this.bold = false,
    this.italic = false,
    this.underline = false,
    this.shadow = false,
    this.thinFont = false,
    this.arialFont = false,
    this.opacity = 1,
  }) : fontSize = MyTextSize.XL;

  MyText.XXL(
    this.data, {
    this.textAlign = TextAlign.center,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines,
    this.color = Colors.black,
    this.backgroundColor,
    this.bold = false,
    this.italic = false,
    this.underline = false,
    this.shadow = false,
    this.thinFont = false,
    this.arialFont = false,
    this.opacity = 1,
  }) : fontSize = MyTextSize.XXL;

  MyText.XXXL(
    this.data, {
    this.textAlign = TextAlign.center,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines,
    this.color = Colors.black,
    this.backgroundColor,
    this.bold = false,
    this.italic = false,
    this.underline = false,
    this.shadow = false,
    this.thinFont = false,
    this.arialFont = false,
    this.opacity = 1,
  }) : fontSize = MyTextSize.XXXL;

  MyText.XXXXL(
    this.data, {
    this.textAlign = TextAlign.center,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines,
    this.color = Colors.black,
    this.backgroundColor,
    this.bold = false,
    this.italic = false,
    this.underline = false,
    this.shadow = false,
    this.thinFont = false,
    this.arialFont = false,
    this.opacity = 1,
  }) : fontSize = MyTextSize.XXXXL;

  MyText.L(
    this.data, {
    this.textAlign = TextAlign.center,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines,
    this.color = Colors.black,
    this.backgroundColor,
    this.bold = false,
    this.italic = false,
    this.underline = false,
    this.shadow = false,
    this.thinFont = false,
    this.arialFont = false,
    this.opacity = 1,
  }) : fontSize = MyTextSize.L;

  MyText.XS(
    this.data, {
    this.textAlign = TextAlign.center,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines,
    this.color = Colors.white,
    this.backgroundColor,
    this.bold = false,
    this.italic = false,
    this.underline = false,
    this.shadow = false,
    this.thinFont = false,
    this.arialFont = false,
    this.opacity = 1,
  }) : fontSize = MyTextSize.XS;

  MyText.XXS(
    this.data, {
    this.textAlign = TextAlign.center,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines,
    this.color = Colors.white,
    this.backgroundColor,
    this.bold = false,
    this.italic = false,
    this.underline = false,
    this.shadow = false,
    this.thinFont = false,
    this.arialFont = false,
    this.opacity = 1,
  }) : fontSize = MyTextSize.XXS;
  MyText.XXXS(
    this.data, {
    this.textAlign = TextAlign.center,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines,
    this.color = Colors.white,
    this.backgroundColor,
    this.bold = false,
    this.italic = false,
    this.underline = false,
    this.shadow = false,
    this.thinFont = false,
    this.arialFont = false,
    this.opacity = 1,
  }) : fontSize = MyTextSize.XXXS;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      data,
      style: _buildTextStyle(),
      minFontSize: 2,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }

  TextStyle _buildTextStyle() {
    Function googleFontBuilder = GoogleFonts.raleway;
    if (arialFont) googleFontBuilder = GoogleFonts.lato;

    return googleFontBuilder(
      color: color,
      fontSize: fontSize,
      fontWeight: _fontWeight(),
      fontStyle: _fontStyle(),
      decoration: underline ? TextDecoration.underline : null,
      backgroundColor: backgroundColor,
      shadows: _textShadows(),
    );
  }

  List<Shadow> _textShadows() {
    if (!shadow) return [];
    return [
      ..._textOutline(),
      _basicTextShadow(),
    ];
  }

  Shadow _basicTextShadow() {
    return const Shadow(
      offset: Offset(2, 2),
      blurRadius: 1.0,
      color: Colors.black,
    );
  }

  List<Shadow> _textOutline() {
    return const [
      Shadow(offset: Offset(-1, -1), color: Colors.black),
      Shadow(offset: Offset(1, -1), color: Colors.black),
      Shadow(offset: Offset(1, 1), color: Colors.black),
      Shadow(offset: Offset(-1, 1), color: Colors.black),
    ];
  }

  FontWeight _fontWeight() {
    return bold ? FontWeight.bold : FontWeight.normal;
  }

  FontStyle _fontStyle() {
    return bold ? FontStyle.normal : FontStyle.normal;
  }
}
