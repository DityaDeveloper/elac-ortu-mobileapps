import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../gen/colors.gen.dart';
import '../dashboard_content/category_menu_content_view.dart';
import '../dashboard_content/home_work_content_view.dart';
import '../dashboard_content/perputakaan_content_model.dart';
import '../dashboard_content/profile_content_view.dart';
import '../dashboard_content/promotion_content_view.dart';
import '../login/login_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        ProfileContentView(),
       // AttendanceContentView(),
        PromotionContentView(),
        const CategoryMenuContentView(),
        const HomeWorkContentView(),
        const PerpustakaanContentView(),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, right: 20, left: 20),
          child: ElevatedButton(
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(ColorName.purplelow),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(color: ColorName.purplelow)))),
              onPressed: () {
                //loginController.loginFirestoreOrtu();
                loginController.onLogoutUser();
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const FaIcon(FontAwesomeIcons.google),
                    const SizedBox(
                      width: 6,
                    ),
                    Text("Logout".toUpperCase(),
                        style: const TextStyle(fontSize: 14)),
                  ],
                ),
              )),
        ),
      ]),
    );
  }
}
