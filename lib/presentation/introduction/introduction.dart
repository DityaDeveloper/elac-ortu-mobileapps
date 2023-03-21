import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:introduction_screen/introduction_screen.dart';

import '../bottom_navbar/bottom_navbar_view.dart';
//import '../home/home.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Get.off(() => const BottomNavbarView());
  }

  // Widget _buildFullscreenImage() {
  //   return Image.asset(
  //     'assets/fullscreen.jpg',
  //     fit: BoxFit.cover,
  //     height: double.infinity,
  //     width: double.infinity,
  //     alignment: Alignment.center,
  //   );
  // }

  Widget _buildImage(String assetName, [double width = 280]) {
    return Image.asset('assets/image/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      //autoScrollDuration: 3000,
      // globalHeader: Align(
      //   alignment: Alignment.topRight,
      //   child: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.only(top: 16, right: 16),
      //       child: _buildImage('image_intro1.jpg', 100),
      //     ),
      //   ),
      // ),
      // globalFooter: SizedBox(
      //   width: double.infinity,
      //   height: 60,
      //   child: ElevatedButton(
      //     child: const Text(
      //       'Let\'s go right away!',
      //       style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      //     ),
      //     onPressed: () => _onIntroEnd(context),
      //   ),
      // ),
      pages: [
        PageViewModel(
          title: "Cari Mata Pelajaran",
          body: "Orang Tua dapat mengetahui mata pelajaran disekolah dengan mudah disini. Tanpa harus melihat mata pelajaran secara manual lagi",
          image: _buildImage('introduction_image_1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Absensi Tepat Waktu",
          body:
              "Orang Tua bisa memonitor atau melihat daftar absensi selama per-semester dan mengetahui status dari keaktifan dari siswa/i tersebut",
          image: _buildImage('introduction_image_2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Belajar Tetap Produktif",
          body:
              "Tidak hanya sekedar untuk membaca saja. Orang Tua dapat jelajahi untuk melihat daftar buku perpustakaan dan meminjamnya serta adanya chat untuk memudahkan sesi tanya jawab kepada guru",
          image: _buildImage('introduction_image_3.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Lewati', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Lanjut', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color.fromARGB(255, 189, 189, 189),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
