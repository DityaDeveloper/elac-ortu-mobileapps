import 'package:akucerdasortu/app/utilities/splash_screen.dart';
import 'package:akucerdasortu/presentation/user_logged_in/user_logged_in_controller.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../main.dart';

class UserLoggedInView extends StatefulWidget {
  const UserLoggedInView({super.key});

  @override
  State<UserLoggedInView> createState() => _UserLoggedInViewState();
}

class _UserLoggedInViewState extends State<UserLoggedInView> {
  String? initialMessage;
  bool resolved = false;
  @override
  void initState() {
    super.initState();

    FirebaseMessaging.instance.getInitialMessage().then(
          (value) => setState(
            () {
              resolved = true;
              initialMessage = value?.data.toString();
            },
          ),
        );

    FirebaseMessaging.onMessage.listen(showFlutterNotification);

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      debugPrint('A new onMessageOpenedApp event was published!');
      // Navigator.pushNamed(
      //   context,
      //   '/message',
      //   arguments: MessageArguments(message, true),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final UserLoggedInController userLoggedInController =
        Get.put(UserLoggedInController());
    return const Scaffold(
      body: SplashScreen(),
    );
  }
}
