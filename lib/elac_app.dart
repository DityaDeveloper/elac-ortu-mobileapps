import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

import 'presentation/user_logged_in/user_logged_in_view.dart';

class ElacApp extends StatelessWidget {
  const ElacApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return const GetMaterialApp(
      home: UserLoggedInView(),
    );
  }
}
