import 'package:flutter/material.dart';

import '../../widgets/loader.dart';

class CustomDrawerProvider extends ChangeNotifier {
  BuildContext? context;
  String firstName = "";
  String middleName = "";
  String lastName = "";
  String fullUserName = "";
  int index = 1;
  final Loader _loader = Loader();

  bool isDeleted = false;

  Future<void> init({required BuildContext context}) async {
    this.context = context;
    // firstName=PreferenceUtils.getString(Strings.firstNameKey)??"";
    // middleName=PreferenceUtils.getString(Strings.middleNameKey)??"";
    // lastName=PreferenceUtils.getString(Strings.lastNameKey)??"";
    // fullUserName = '$firstName $middleName $lastName';
    // isDeleted = false;
    // debugPrint('fullUserName $firstName $middleName $lastName');
    // notifyListeners();
  }

  updateIndex(int value) {
    index = value;
    notifyListeners();
  }
}
