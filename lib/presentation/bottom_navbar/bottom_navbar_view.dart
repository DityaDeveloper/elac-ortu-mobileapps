import 'package:akucerdasortu/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../gen/colors.gen.dart';
import 'bottom_navbar_controller.dart';

class BottomNavbarView extends StatefulWidget {
  const BottomNavbarView({super.key});

  @override
  State<BottomNavbarView> createState() => _BottomNavbarViewState();
}

class _BottomNavbarViewState extends State<BottomNavbarView> {
  
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final BottomNavbarController BottomNavbarViewController =
        Get.put(BottomNavbarController());
    return Scaffold(
        bottomNavigationBar: Obx(() => (Theme(
              data: Theme.of(context).copyWith(
                canvasColor: ColorName.white,
                primaryColor: ColorName.white.withOpacity(0.2),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.shifting,
                selectedIconTheme:
                    const IconThemeData(color: ColorName.purplelow),
                selectedItemColor: ColorName.purplelow,
                unselectedItemColor: ColorName.raven,
                selectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.bold),
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: BottomNavbarViewController.index,
                iconSize: 14.0,
                unselectedFontSize: 11.0,
                selectedFontSize: 12.0,
                onTap: (_) {
                  BottomNavbarViewController.onTapBottomMenu(_, context);
                  setState(() {});
                },
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Assets.image.navbarUnselectedDashboard
                        .image(width: 20, height: 20),
                    activeIcon: Assets.image.navbarSelectedDashboard
                        .image(width: 20, height: 20),
                    label: 'Beranda',
                  ),
                  BottomNavigationBarItem(
                    icon: Assets.image.navbarUnselectedPelajaran.image(width: 20, height: 20),
                    activeIcon: Assets.image.navbarSelectedPelajaran.image(width: 20, height: 20),
                    label: 'Pelajaran',
                  ),
                  BottomNavigationBarItem(
                    icon: Assets.image.navbarUnselectedPencarian.image(width: 20, height: 20),
                    activeIcon: Assets.image.navbarSelectedPencarian.image(width: 20, height: 20),
                    label: 'Pencarian',
                  ),
                  BottomNavigationBarItem(
                    icon: Assets.image.navbarUnselectedChat.image(width: 20, height: 20),
                    activeIcon: Assets.image.navbarSelectedChat.image(width: 20, height: 20),
                    label: 'Chat',
                  ),
                  BottomNavigationBarItem(
                    icon: Assets.image.navbarUnselectedProfile.image(width: 20, height: 20),
                    activeIcon: Assets.image.navbarSelectedProfile.image(width: 20, height: 20),
                    label: 'Akun',
                  ),
                ],
              ),
            ))),
        body: IndexedStack(
            index: BottomNavbarViewController.index,
            children: BottomNavbarViewController.pages));
  }
}
