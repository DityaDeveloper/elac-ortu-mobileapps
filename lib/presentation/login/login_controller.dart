// ignore_for_file: unused_field

import 'package:akucerdasortu/app/config/app_environment.dart';
import 'package:akucerdasortu/data/model/user_model/user_model.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../data/local/box/box_storage.dart';
import '../../data/remote/firestore/firestore_user_services.dart';
import '../bottom_navbar/bottom_navbar_view.dart';
import 'login_view.dart';

class LoginController extends GetxController {
  final BoxStorage _boxStorage = BoxStorage();

  var isLoggedin = false.obs;
  var isRemember = false.obs;
  var isPasswordVisible = true.obs;
  var isStatusCodeTrue = false.obs;
  var isUserPinned = false.obs;
  var txtControllernisn = TextEditingController().obs;
  var txtControllerpin = TextEditingController().obs;
  var txtControllerpassword = TextEditingController().obs;
  var isTime = ''.obs;
  var isLocalTime = ''.obs;
  var isLocalDate = ''.obs;

  var isLogginProcess = false.obs;

  var fcmtoken = ''.obs;

  var uid = ''.obs;
  var userPin = ''.obs;
  var usernisn = ''.obs;
  var username = ''.obs;
  var password = ''.obs;
  var photoUrl = ''.obs;
  var email = ''.obs;
  var package = ''.obs;
  var userStatus = ''.obs;
  var userRole = ''.obs;
  var whatssappNumber = ''.obs;
  var telegramNumber = ''.obs;

  String? value;

  late Map<String, dynamic> data;
  late Map<String, dynamic> dataIlmci;

  final FireStoreUserServices _fireStoreUserServices = FireStoreUserServices();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  void onInit() {
    super.onInit();
    autologin(username: '98765', password: '1234');
    loginHardcode();
    greetingLocalTimes();
    onLoad();

  }

  // cobaurl(){
  //   String fullurl = AppEnvironment.instance.baseUrl;
  // }

  autologin({required String username, required String password}){
    txtControllerpin.value.text = username;
    txtControllerpassword.value.text = password;
  }

  loginFirestoreOrtu(String userid) async {
    UserModel usermodel = await _fireStoreUserServices.loginCurrentUser(userid);
    if (usermodel.uid != '') {
       getFcmToken();
      username.value = usermodel.username;
      usernisn.value = usermodel.nisn;
      password.value = usermodel.password;
      uid.value = usermodel.uid;

      Get.snackbar('Berhasil Masuk', 'Halo : ${username.value}');
      Get.off(() => const BottomNavbarView());
    } else {
      Get.off(() => const LoginView());
    }
  }

  loginHardcode() async {
    usernisn.value = txtControllerpin.value.text;
    String password = txtControllerpassword.value.text;
     debugPrint('data ${txtControllerpin.value.text} - $password - ${uid.value}');
    if (usernisn.value == '98765' && password == '1234' ||
        usernisn.value == '0108332282' && password == '1234' ||
        usernisn.value == '0099481243' && password == '1234' ||
        usernisn.value == '123456' && password == '1234' || usernisn.value == '0079986768' && password == '1234') {
      switch (usernisn.value) {
        case '98765':
          uid.value = 'w2QJoDOMd94oifhmsHtc';
          break;
        case '0108332282':
          uid.value = 'vryRYui08LS9d0XqdQRC';
          break;
        case '0099481243':
          uid.value = '3cM4bX6ufvlOcxrhmY2w';
          break;
        case '123456':
          uid.value = 'FXHzjkkXApMGVyAKPnRq';
          break;
        case '0079986768':
          uid.value = 'gv8nv4NGjksSK40euYsW';
          break;
        default:
          return Get.snackbar('Informasi', 'mohon isi nisn dan password');
      }
      debugPrint('data ${usernisn.value} - $password - ${uid.value}');
      greetingLocalTimes();
      //_boxStorage.setFirstInstall();
      loginFirestoreOrtu(uid.value);
      debugPrint('username : ${username.value} - token fcm : ${fcmtoken.value}');
    } else {
      Get.snackbar(
          'Informasi', 'data tidak ditemukan \nperiksa kembali akun anda');
    }
    debugPrint(uid.value);
  }

  late Stream<String> _tokenStream;

  getFcmToken() {
    FirebaseMessaging.instance
        .getToken(
            vapidKey:
                'BGpdLRsMJKvFDD9odfPk92uBg-JbQbyoiZdah0XlUyrjG4SDgUsE1iC_kdRgt4Kn0CO7K3RTswPZt61NNuO0XoA')
        .then(setToken);
    _tokenStream = FirebaseMessaging.instance.onTokenRefresh;
    _tokenStream.listen(setToken);
  }

  void setToken(String? token) async {
  fcmtoken.value = token!;
    if (uid.value != '') {
    debugPrint('Updated FCM Token: $token');
      _fireStoreUserServices.updateFcmToken(
          uid.value, fcmtoken.value);
    }
  }

  Future<void> logout() async {
    // Obtain shared preferences.
    isLogginProcess.value = false;
    Get.off(() => const LoginView());
  }

  greetingLocalTimes() {
    var now = DateTime.now().hour;
    isLocalDate.value =
        DateFormat('EEE, d/M/y').format(DateTime.now()).toString();
    isLocalTime.value =
        DateFormat('HH:mm:ss').format(DateTime.now()).toString();

    if (now >= 11 && now <= 14) {
      isTime.value = 'Selamat Siang';
    }
    if (now >= 15 && now <= 16) {
      isTime.value = 'Selamat Sore';
    }
    if (now >= 17 && now <= 18) {
      isTime.value = 'Selamat Petang';
    }
    if (now >= 19 && now <= 23) {
      isTime.value = 'Selamat Malam';
    }
    if (now >= 1 && now <= 10) {
      isTime.value = 'Selamat Pagi';
    }
    debugPrint('is now : $now - is time : ${isTime.value}');
  }

  hidepassword() {
    isPasswordVisible.value
        ? isPasswordVisible.value = false
        : isPasswordVisible.value = true;
  }

  rememberMe() {
    if (isRemember.value == false) {
      isRemember.value = true;
    } else {
      isRemember.value = false;
    }
    onSavedRememberMe(isRemember.value);
  }

  onLoad() {
    isRemember.value = _boxStorage.getUserRememberMe();
    if (isRemember.value == true) {
      txtControllernisn.value.text = _boxStorage.getUserNisn();
      txtControllerpassword.value.text = _boxStorage.getUserPassword();
      // username.value = _boxStorage.getUserName();
    }
    debugPrint(
        'is remember ${isRemember.value} : ${username.value} - ${txtControllernisn.value.text} - ${txtControllerpassword.value.text}');
  }

  onSavedRememberMe(bool uncheck) {
    //isRemember.value = uncheck;
    debugPrint('on saved $uncheck');
    if (uncheck == false) {
      _boxStorage.deleteUserNisn();
      _boxStorage.deleteUserPassword();
      _boxStorage.deleteUserRememberMe();
      debugPrint('on remove');
    } else {
      _boxStorage.setUserNisn(txtControllernisn.value.text);
      _boxStorage.setUserPassword(txtControllerpassword.value.text);
      _boxStorage.setUserRememberMe();
    }
    debugPrint(
        'saving nisn $uncheck : ${txtControllernisn.value.text} - password : ${txtControllerpassword.value.text}');
  }

  onLoginUser() {
    if (isLoggedin.value == true) {
      Get.snackbar('Login Success', 'Your Token : $fcmtoken');
      //  Get.off(() => const DacBottomNavbar());
    } else {
      Get.off(() => const LoginView());
    }
  }

  onLogoutUser() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
    isLogginProcess.value = false;
    _boxStorage.clearCache;
    Get.off(() => const LoginView());
  }

  // bool requested = false;
  // bool fetching = false;
  // late NotificationSettings settings;

  // Future<void> requestPermissions() async {
  //   debugPrint('request fcm permission..');
  //   NotificationSettings settings =
  //       await FirebaseMessaging.instance.requestPermission(
  //     announcement: true,
  //     carPlay: true,
  //     criticalAlert: true,
  //   );

  //   requested = true;
  //   fetching = false;
  //   settings = settings;
  // }

}
