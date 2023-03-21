
import 'package:akucerdasortu/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
       decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0.0),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffD3F2DF),
                        Color(0xffD0E7FD),
                        Color(0xffFACCD1),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Assets.image.tutwuriLogo.image(
            height: 200
          ),
          Assets.image.akucerdasLogo.image(
            width: 200
          ),
        ],
      )
    );
  }
}