import 'package:flutter/cupertino.dart';
import 'package:je_one_ecommerce_app/res/utils.dart';
import 'sizes.dart';

AppSizes? sizes;

bool _isInitialized = false;

void initializeResources({required BuildContext context}) {
  AppSizes().initializeSize(context);
  PreferenceUtils.init();
  if (_isInitialized) {
    /**
     * this is to prevent
     * multiple initialization calls.
     */
    return;
  }

  sizes = AppSizes()..initializeSize(context);
}

BuildContext? currentContext;

void setCurrentContext(BuildContext context) {
  currentContext = context;
}

double getWidthRatio() => sizes?.widthRatio ?? 1;

double getHeightRatio() => sizes?.heightRatio ?? 1;

double getFontRatio() => sizes?.fontRatio ?? 1.0;

double getHeight() => sizes?.height ?? 2560;
double getWidth() => sizes?.width ?? 1440;

double commonWidth = getWidth() * .9;

double driverLat = 0.0;
double driverLng = 0.0;
