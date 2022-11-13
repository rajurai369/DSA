import 'package:dharanschool/view/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/app_size.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
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
               
                const VGap(),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Enter email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),
                const VGap(),
               
                const VGap(),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("Forgor Password"))),
                  ],
                ),
                const VGap(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    InkWell(
                        onTap: () {
                          Get.to(() => const LoginView());
                        },
                        child: const Text(
                          "I have account",
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
