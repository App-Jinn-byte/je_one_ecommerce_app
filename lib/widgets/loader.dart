import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/res.dart';


class Loader {
  showLoader({
    BuildContext? context,
  }) {
    showDialog(
      context: context!,
      builder: (_) {
        return Material(
          color: Colors.black.withOpacity(0.5),
          child: Center(
            child: SizedBox(
              height: sizes!.height * 0.3,
              width: sizes!.width * 0.35,
              child: Lottie.asset(Assets.apiLoading),
            ),
          ),
        );
      },
    );
  }

  getLoader(){
    return Center(
      child: SizedBox(
        height: sizes!.height * 0.3,
        width: sizes!.width * 0.35,
        child: Lottie.asset(Assets.apiLoading),
      ),
    );
  }

  hideLoader({required BuildContext context}) {
    Navigator.of(context).pop();
  }
}
