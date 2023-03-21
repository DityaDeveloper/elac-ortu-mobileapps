// ignore_for_file: unnecessary_overrides

import 'package:akucerdasortu/presentation/bottom_navbar/bottom_navbar_view.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../data/remote/firestore/firestore_user_services.dart';
import '../login/login_controller.dart';
import '../login/login_view.dart';

class UserLoggedInController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getFcmToken();
    checklanding();
  }

  @override
  void onClose() {
    super.onClose();
  }

  //final BoxStorage _boxStorage = BoxStorage();
  final FireStoreUserServices _fireStoreUserServices = FireStoreUserServices();
  final LoginController _loginController = Get.put(LoginController());

  var isLoadingSplash = false.obs;

  checklanding() {
    isLoadingSplash.value = true;

    debugPrint('user token : ${_loginController.uid.value}');
    if (_loginController.uid.value == '') {
      Future.delayed(const Duration(seconds: 2), () async {
        Get.off(() => const LoginView());
      });
    } else {
      setcurrentuser(_loginController.uid.value);
      Future.delayed(const Duration(seconds: 2), () async {
        Get.off(() => const BottomNavbarView());
      });
    }
    isLoadingSplash.value = false;
  }

  setcurrentuser(String uid) {
    _fireStoreUserServices.loginCurrentUser(uid);
  }

  var fcmtoken = ''.obs;
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
    debugPrint('FCM Token: $token');
    _loginController.fcmtoken.value = token!;
    if (_loginController.uid.value != '') {
      _fireStoreUserServices.updateFcmToken(
          _loginController.uid.value, _loginController.fcmtoken.value);
    }
  }
}
