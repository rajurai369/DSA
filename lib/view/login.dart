import 'package:dharanschool/view/forget_password.dart';
import 'package:dharanschool/view/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/app_size.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool donkey = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FlutterLogo(
                  size: 80,
                ),
                const VGap(),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Enter emaii",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),
                const VGap(),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter password",
                      prefixIcon: const Icon(Icons.lock),
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                          onPressed: () {
                            donkey = !donkey;
                            setState(() {});
                          },
                          icon: const Icon(Icons.visibility_off))),
                  obscureText: donkey,
                ),
               const VGap(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.to(() => const ForgotPasswordView());
                        },
                        child: const Text("Forgot password?")),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("Login"))),
                  ],
                ),
                const VGap(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.to(() => const RegisterView());
                        },
                        child: const Text(
                          "Create Account",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

