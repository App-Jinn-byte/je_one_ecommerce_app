import 'dart:async' show Future;
import 'package:je_one_ecommerce_app/res/strings.dart';
import 'package:shared_preferences/shared_preferences.dart';


class PreferenceUtils {
  static String? userId;
  static String? email;
  static String? password;
  static String? deviceId;
  static String? firstName;
  static String? middleName;
  static String? lastName;
  static String? phone;
  static String? userImage;
  static String? profileImage;
  static String? vehicleImage;
  static String? token;
  static String? vehicleID;
  static String? documentID;
  static String? experienceID;
  static bool? isOnline;
  var time = DateTime;

  static Future<SharedPreferences> get _instance async =>
      _prefsInstance ??= await SharedPreferences.getInstance();
  static SharedPreferences? _prefsInstance;

  static Future<SharedPreferences> init() async {
    _prefsInstance = await _instance;
    return _prefsInstance!;

  }

  static String? getString(String? key, [String? defValue]) {
    if (PreferenceUtils._prefsInstance != null)
      return _prefsInstance!.getString(key!) ?? defValue ?? "";
  }

  static Future<bool> setString(String key, String value) async {
    var prefs = await _instance;

    return prefs.setString(key, value);
  }

  static Future<bool> setBool(String key, bool value) async {
    var prefs = await _instance;
    return prefs.setBool(key, value);
  }

  static bool? getBool(String key, [bool? defValue]) {
    return _prefsInstance!.getBool(key) ?? defValue ?? false;
  }

  static Future<bool> setInt(String key, int value) async {
    var prefs = await _instance;

    return prefs.setInt(key, value);
  }

  static int getInt(String key, [int? defValue]) {
    return _prefsInstance!.getInt(key) ?? defValue ?? 0;
  }

  static clearPreferences() {
    _prefsInstance!.clear();
  }

  static Future<bool> setDouble(String key, double value) async {
    var prefs = await _instance;
    return prefs.setDouble(key, value);
  }

  static double getDouble(String key, [double? defValue]) {
    return _prefsInstance!.getDouble(key) ?? defValue ?? 0;
  }

  static String getUserId() {
    userId = PreferenceUtils.getString(Strings.userIdKey);
    return userId ?? "";
  }

  static setUserId(String name) async {
    PreferenceUtils.setString(Strings.userIdKey, name);
  }

  static String getEmail() {
    email = PreferenceUtils.getString(Strings.emailKey);
    return email ?? "";
  }

  static setEmail(String name) async {
    PreferenceUtils.setString(Strings.emailKey, name);
  }
  static setPhoneNumber(String phone) async {
    PreferenceUtils.setString(Strings.phoneKey, phone);
  }

  static String getPassword() {
    password = PreferenceUtils.getString(Strings.passwordKey);
    return password ?? "";
  }

  static setPassword(String name) async {
    PreferenceUtils.setString(Strings.passwordKey, name);
  }

  static String getDeviceId() {
    deviceId = PreferenceUtils.getString(Strings.deviceIdlKey);
    return deviceId ?? "";
  }

  static setDeviceId(String name) async {
    PreferenceUtils.setString(Strings.deviceIdlKey, name);
  }

  static String getFirstName() {
    firstName = PreferenceUtils.getString(Strings.firstNameKey);
    return firstName ?? "";
  }

  static setFirstName(String name) async {
    PreferenceUtils.setString(Strings.firstNameKey, name);
  }

  static String getMiddleName() {
    middleName = PreferenceUtils.getString(Strings.middleNameKey);
    return middleName ?? "";
  }

  static setMiddleName(String name) async {
    PreferenceUtils.setString(Strings.middleNameKey, name);
  }

  static String getLastName() {
    lastName = PreferenceUtils.getString(Strings.lastNameKey);
    return lastName ?? "";
  }

  static setLastName(String name) async {
    PreferenceUtils.setString(Strings.lastNameKey, name);
  }

  static bool getOnlineOfflineStatus() {
    isOnline = PreferenceUtils.getBool(Strings.onlineOfflineKey);
    return isOnline ?? false;
  }

  static setOnlineOfflineStatus(bool isOnline) {
    PreferenceUtils.setBool(Strings.onlineOfflineKey, isOnline);
  }

  static String getUserImage() {
    userImage = PreferenceUtils.getString(Strings.userImageKey);
    return userImage ?? "";
  }
  static String getProfileImage() {
    profileImage = PreferenceUtils.getString(Strings.profilePicture);
    return profileImage ?? "";
  }


  static setUserImage(String name) async {
    PreferenceUtils.setString(Strings.userImageKey, name);
  }

  static setToken(String setToken) {
    PreferenceUtils.setString(Strings.tokenKey, "Bearer $setToken");
  }
  static setDocId(String setDocumentId) {
    PreferenceUtils.setString(Strings.docId, setDocumentId);
  }
  static setExperienceId(String setExpId) {
    PreferenceUtils.setString(Strings.experienceId, setExpId);
  }
  static setCompanyName(String companyName) {
    PreferenceUtils.setString(Strings.companyName, companyName);
  }
  static setCac(String cac) {
    PreferenceUtils.setString(Strings.cac, cac);
  }
  static setVehicleId(String setVehicleId) {
    PreferenceUtils.setString(Strings.vehicleId, setVehicleId);
  }

  static String getToken() {
    token = PreferenceUtils.getString(Strings.tokenKey);
    return token ?? "";
  }
  static String getVehicleId() {
    vehicleID = PreferenceUtils.getString(Strings.vehicleId);
    return vehicleID ?? "";
  }
  static String getExperienceId() {
    experienceID = PreferenceUtils.getString(Strings.experienceId);
    return experienceID ?? "";
  }
  static String getDocumentId() {
    documentID = PreferenceUtils.getString(Strings.docId);
    return documentID ?? "";
  }

  static Future<void> saveUserData(dynamic data) async {
    await PreferenceUtils.setBool(Strings.isLoggedIn, true);
    await PreferenceUtils.setString(Strings.id, data.user!.id!);
    await PreferenceUtils.setString(Strings.firstName, data.user!.firstName!);
    await PreferenceUtils.setString(Strings.middleName, data.user!.lastName!);
    await PreferenceUtils.setString(Strings.lastName, data.user!.lastName!);
    await PreferenceUtils.setString(Strings.email, data.user!.email!);
    await PreferenceUtils.setString(Strings.address, data.user!.address!);
    await PreferenceUtils.setUserId(data?.user?.id ?? "");
    await PreferenceUtils.setUserImage(data?.user?.profilePicPath ?? "");
    await PreferenceUtils.setDeviceId(data?.user?.deviceId ?? "");
    await PreferenceUtils.setEmail(data?.user?.email ?? "");
    await PreferenceUtils.setPhoneNumber(data?.user?.phoneNumber ?? "");
    await PreferenceUtils.setString(Strings.password,data?.user?.password ?? "");
    await PreferenceUtils.setString(Strings.vehicleName,data?.user?.vehicalInformation?.name?? "");
    await PreferenceUtils.setString(Strings.vehicleMake,data?.user?.vehicalInformation?.make?? "");
    await PreferenceUtils.setString(Strings.vehicleModel,data?.user?.vehicalInformation?.model?? "");
    await PreferenceUtils.setString(Strings.epaCertificate,data?.user?.technicianDocument?.epaCertificate??"");
    await PreferenceUtils.setString(Strings.license,data?.user?.technicianDocument?.license?? "");
    await PreferenceUtils.setInt(Strings.vehicleYear,data?.user?.vehicalInformation?.year??0);
    await PreferenceUtils.setString(Strings.vehicleLicensePlate,data?.user?.vehicalInformation?.licensePlate??"");
    await PreferenceUtils.setString(Strings.vehicleColor,data?.user?.vehicalInformation?.color??"");
    await PreferenceUtils.setFirstName(data?.user?.firstName ?? "");
    await PreferenceUtils.setMiddleName(data?.user?.middleName ?? "");
    await PreferenceUtils.setLastName(data?.user?.lastName ?? "");
    await PreferenceUtils.setPassword(data?.user?.password);
    await PreferenceUtils.setToken(data!.token ?? "");
    await PreferenceUtils.setDocId(data!.user!.technicianDocument!.id ?? "");
    await PreferenceUtils.setVehicleId(data!.user!.vehicalInformation!.id ?? "");
    await PreferenceUtils.setExperienceId(data!.user!.experience!.id ?? "");
    await PreferenceUtils.setCompanyName(data!.user!.companyName ?? "");
    await PreferenceUtils.setCac(data!.user!.cac ?? "");
    await PreferenceUtils.setInt(Strings.expInYears, data?.user?.experience?.experienceYears??0);
    await PreferenceUtils.setString(Strings.skillLevel, data?.user?.experience?.skillLevel ?? "");
    await PreferenceUtils.setString(Strings.email, data!.user!.email!);
    await PreferenceUtils.setString(Strings.address, data!.user!.address!);
    await PreferenceUtils.setString(
        Strings.profilePicture, data.user!.profilePicPath!);
  }
  static Future<void> saveUserDataOnEditProfile(dynamic data) async {
    await PreferenceUtils.setBool(Strings.isLoggedIn, true);
    await PreferenceUtils.setString(Strings.id, data.user!.id!);
    await PreferenceUtils.setString(Strings.firstName, data.user!.firstName!);
    await PreferenceUtils.setString(Strings.middleName, data.user!.lastName!);
    await PreferenceUtils.setString(Strings.lastName, data.user!.lastName!);
    await PreferenceUtils.setString(Strings.email, data.user!.email!);
    await PreferenceUtils.setString(Strings.address, data.user!.address!);
    await PreferenceUtils.setUserId(data?.user?.id ?? "");
    await PreferenceUtils.setUserImage(data?.user?.profilePicPath ?? "");
    await PreferenceUtils.setDeviceId(data?.user?.deviceId ?? "");
    await PreferenceUtils.setEmail(data?.user?.email ?? "");
    await PreferenceUtils.setPhoneNumber(data?.user?.phoneNumber ?? "");
    await PreferenceUtils.setString(Strings.password,data?.user?.password ?? "");
    await PreferenceUtils.setString(Strings.vehicleName,data?.user?.vehicalInformation?.name?? "");
    await PreferenceUtils.setString(Strings.vehicleMake,data?.user?.vehicalInformation?.make?? "");
    await PreferenceUtils.setString(Strings.vehicleModel,data?.user?.vehicalInformation?.model?? "");
    await PreferenceUtils.setString(Strings.epaCertificate,data?.user?.technicianDocument?.epaCertificate??"");
    await PreferenceUtils.setString(Strings.license,data?.user?.technicianDocument?.license?? "");
    await PreferenceUtils.setInt(Strings.vehicleYear,data?.user?.vehicalInformation?.year??0);
    await PreferenceUtils.setString(Strings.vehicleLicensePlate,data?.user?.vehicalInformation?.licensePlate??"");
    await PreferenceUtils.setString(Strings.vehicleColor,data?.user?.vehicalInformation?.color??"");
    await PreferenceUtils.setFirstName(data?.user?.firstName ?? "");
    await PreferenceUtils.setMiddleName(data?.user?.middleName ?? "");
    await PreferenceUtils.setLastName(data?.user?.lastName ?? "");
    await PreferenceUtils.setPassword(data?.user?.password);
    // await PreferenceUtils.setToken(data!.token ?? "");
    await PreferenceUtils.setDocId(data!.user!.technicianDocument!.id ?? "");
    await PreferenceUtils.setVehicleId(data!.user!.vehicalInformation!.id ?? "");
    await PreferenceUtils.setExperienceId(data!.user!.experience!.id ?? "");
    await PreferenceUtils.setCompanyName(data!.user!.companyName ?? "");
    await PreferenceUtils.setCac(data!.user!.cac ?? "");
    await PreferenceUtils.setInt(Strings.expInYears, data?.user?.experience?.experienceYears??0);
    await PreferenceUtils.setString(Strings.skillLevel, data?.user?.experience?.skillLevel ?? "");
    await PreferenceUtils.setString(Strings.email, data!.user!.email!);
    await PreferenceUtils.setString(Strings.address, data!.user!.address!);
    await PreferenceUtils.setString(
        Strings.profilePicture, data.user!.profilePicPath!);
  }
}
