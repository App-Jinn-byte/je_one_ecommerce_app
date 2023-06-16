import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/widgets/my_text.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, this.productName, this.productPrice, this.onPressCross, this.onPressDecrementItem, this.onPressIncrementItem, this.itemCount}) : super(key: key);
  final String ? productName;
  final String ? productPrice;
  final String ? itemCount;
  final Function ? onPressCross;
  final Function ? onPressDecrementItem;
  final Function ? onPressIncrementItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizes!.height*0.1,
      width: sizes!.width,
      decoration: BoxDecoration(
        color: AppColors.appBackground,
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
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Image.asset(Assets.sampleProductImage, fit: BoxFit.fill,      height: sizes!.height*0.1,
                width: sizes!.height*0.1,

              )),
          Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all( sizes!.height*0.008,),
                child: Column(

                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                            onTap: (){
                              onPressCross?.call();
                            },
                            child: Image.asset(Assets.cross))),
                    SizedBox(height: sizes!.height*0.005,),

                    Align(
                        alignment: Alignment.centerLeft,child:
                    MyText.M(productName??"", color: AppColors.appTheme,bold: true, )
                    ),
                    SizedBox(height: sizes!.height*0.001,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText.S(productPrice??"", color: AppColors.blackColorText),
                        Row(
                          children: [
                            GestureDetector(
                                onTap: (){
                                  onPressDecrementItem?.call();
                                },
                                child: Image.asset(Assets.minus)),
                            SizedBox(width: sizes!.width*0.02,),

                            MyText.M(itemCount??"", color: AppColors.blackColorText),
                            SizedBox(width: sizes!.width*0.02,),

                            GestureDetector(
                                onTap: (){
                                  onPressIncrementItem?.call();
                                },child: Image.asset(Assets.plus)),
                          ],
                        )
                      ],
                    ),

                  ],
                ),
              ))
        ],
      ),
    );
  }
}
