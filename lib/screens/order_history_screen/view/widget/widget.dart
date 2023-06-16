import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/widgets/common_widgets.dart';
import 'package:je_one_ecommerce_app/widgets/custom_tab_view_widget/custom_tab_view.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';
import 'package:provider/provider.dart';

class OrderHistoryCard extends StatelessWidget {
  const OrderHistoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: sizes!.heightRatio * 9),
      padding: EdgeInsets.symmetric(
          horizontal: sizes!.widthRatio * 9, vertical: sizes!.heightRatio * 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: AppColors.greyBorderColor,
          width: 1.5,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textValueColumn("Order Number", "1707"),
              textValueColumn("Total Amount", "35,999 TND"),
              textValueColumn("Status", "Ongoing",
                  textValueColor: AppColors.buttonBlue),
            ],
          ),
          CommonWidgets.divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              textValueColumn("Quantity", "2"),
              textValueColumn("Date", "18/04/2023"),
              SizedBox(
                width: sizes!.widthRatio * 20,
              )
            ],
          ),
        ],
      ),
    );
  }
}

Widget textValueColumn(text, textValue, {Color? textValueColor}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      MyText(
        text,
        bold: true,
      ),
      MyText.L(
        textValue,
        color: textValueColor ?? AppColors.appTheme,
        bold: true,
      )
    ],
  );
}
