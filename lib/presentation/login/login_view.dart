import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';
import 'login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(10.0),
            child: AppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              backgroundColor: ColorName.white,
            )),
        body: SafeArea(
          child: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 150.0, right: 150.0),
                    child: Assets.image.tutwuriLogo.image(fit: BoxFit.fitWidth),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0, right: 70.0),
                    child:
                        Assets.image.akucerdasLogo.image(fit: BoxFit.fitWidth),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 20.0, right: 20.0),
                    child:
                        Assets.image.bookLoginLogo.image(fit: BoxFit.fitWidth),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                child: TextFormField(
                  controller: loginController.txtControllerpin.value,
                  keyboardType: TextInputType.text,
                  onSaved: (String? value) {},
                  onChanged: (value) => loginController.txtControllerpin.value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "nisn cannot be empty";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '89122345',
                    labelText: 'NISN',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                child: TextFormField(
                  controller: loginController.txtControllerpassword.value,
                  obscureText: loginController.isPasswordVisible.value,
                  keyboardType: TextInputType.text,
                  onChanged: (value) =>
                      loginController.txtControllerpassword.value,
                  onSaved: (String? value) {},
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "password cannot be empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        loginController.isPasswordVisible.value
                            ? Icons.visibility_off_sharp
                            : Icons.visibility,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        loginController.hidepassword();
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              loginController.rememberMe();
                            },
                            child: loginController.isRemember.value == true
                                ? const Icon(Icons.check_box)
                                : const Icon(
                                    Icons.check_box_outline_blank_outlined)),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Ingat saya ",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: GestureDetector(
                        // onTap: () => {Get.to(ForgotPasswordView())},
                        child: const Text(
                          "Lupa password ?",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, right: 20, left: 20),
                child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            ColorName.purplelow),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: const BorderSide(
                                        color: ColorName.purplelow)))),
                    onPressed: () {
                      //loginController.loginFirestoreOrtu();
                      loginController.loginHardcode();
                     //loginController.cobaurl();
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
                          Text("Masuk".toUpperCase(),
                              style: const TextStyle(fontSize: 14)),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        )));
  }

  bool ischeckedValue = false;
}
