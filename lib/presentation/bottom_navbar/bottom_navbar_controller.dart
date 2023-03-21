import 'package:akucerdasortu/presentation/dashboard/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavbarController extends GetxController {
  var selectedIndex = 0.obs;
  var selectedPage = <Widget>[].obs;

  var selectedPages = <Widget>[
    const DashboardView(),
    const DashboardView(),
    const DashboardView(),
    const DashboardView(),
    const DashboardView(),
  ].obs;

  int get index => selectedIndex.value;
  List<Widget> get pages => selectedPages;

    onTapBottomMenu(int currentIndex, BuildContext context) => {
        selectedIndex.value = currentIndex,
        selectedPage.value = selectedPages,
      };


  onLogoutApps() {
    //box.erase();
   // Get.off(() => const LoginView());
  }

}
