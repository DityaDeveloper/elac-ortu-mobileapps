import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../gen/colors.gen.dart';
import '../dashboard/dashboard_controller.dart';
import '../login/login_controller.dart';

class ProfileContentView extends GetView<LoginController> {
  ProfileContentView({super.key});

  final LoginController loginController = Get.put(LoginController());
  final DashboardController dashboardController = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(25.0),
          child: (InkWell(
            // onTap: () => Get.to(const ProfileView()),
            child: SizedBox(
              height: 50,
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'SD HAPPY',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: ColorName.blackgrey),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            '${loginController.isTime.value}, orang tua ',
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: ColorName.blackgrey),
                          ),
                          Text(
                            loginController.username.value,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: ColorName.blackgrey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container()
                ],
              ),
            ),
          )),
        );
  }
}
