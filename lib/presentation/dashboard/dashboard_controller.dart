// ignore_for_file: unnecessary_overrides, duplicate_ignore

import 'package:akucerdasortu/data/local/box/box_storage.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController{
  @override
  void onInit() {
    super.onInit();
   // getCurrentUser();
  }

  @override
  // ignore: unnecessary_overrides
  void onClose() {
    super.onClose();
  }

  final BoxStorage _boxStorage = BoxStorage();

  var username = ''.obs;

  getCurrentUser() {
    username.value =  _boxStorage.getUserName();
  }

}