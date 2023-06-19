import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:je_one_ecommerce_app/res/assets.dart';
import 'package:je_one_ecommerce_app/res/colors.dart';
import 'package:je_one_ecommerce_app/res/res.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/home_screen/view/home_screen_view.dart';
import 'package:je_one_ecommerce_app/screens/home_screen_pages/home_screen/view/view.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool _showLogo = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    );
    _startAnimation();
  }

  void _startAnimation() {
    _animationController.forward().then((_) {
      Future.delayed(Duration(milliseconds: 1), () {
        setState(() {
          _showLogo = true;
        });
        Future.delayed(Duration(seconds: 2), () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreenView()),
          );
        });
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    initializeResources(context: context);

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Positioned(
                top: (_animation.value - 1.0) * sizes!.height!,
                left: (_animation.value - 1.0) * sizes!.width!,
                right: (_animation.value - 1.0) * sizes!.width!,
                bottom: (_animation.value - 1.0) * sizes!.height!,
                child: Opacity(
                  opacity: 1.0 - _animation.value,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.appTheme,
                    ),
                  ),
                ),
              );
            },
          ),
          SlideInLeft(
            duration: Duration(milliseconds: 1000),
            child: AnimatedOpacity(
              opacity: _showLogo ? 1 : 0,
              duration: Duration(milliseconds: 0),
              child: Center(
                child: Image.asset(
                  Assets.appLogo,
                  height: sizes!.heightRatio * 56,
                  width: sizes!.widthRatio * 182,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
