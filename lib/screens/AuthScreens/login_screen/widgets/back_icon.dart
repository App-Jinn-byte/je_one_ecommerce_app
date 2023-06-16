import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/res/res.dart';

class CircularWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizes!.height*0.05,
      height: sizes!.height*0.05,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.blue,
          width: 1,
        ),
        color: Colors.white,
      ),
      child: Center(
        child: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.blue,
          size: sizes!.height*0.025,
          weight: 0.1,
        ),
      ),
    );
  }
}
