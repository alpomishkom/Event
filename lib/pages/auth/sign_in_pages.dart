import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:house_party_planning/pages/auth/sign_up_pages.dart';
import 'package:house_party_planning/pages/intro/intro.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controllor/controller.dart';

class SignInPages extends StatefulWidget {
  const SignInPages({super.key});

  @override
  State<SignInPages> createState() => _SignInPagesState();
}

class _SignInPagesState extends State<SignInPages> {
  bool isStrar = false;
  bool isLoadign = false;
  TextEditingController name = TextEditingController();
  TextEditingController passworld = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090909),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 46,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Gap(100),
                TextFormField(
                  controller: name,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Your Email",
                    hintStyle: const TextStyle(color: Colors.black),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const Gap(20),
                TextFormField(
                  obscureText: isStrar,
                  controller: passworld,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: const TextStyle(color: Colors.black),
                    filled: true,
                    suffixIcon: CupertinoButton(
                      child: isStrar
                          ? const Icon(CupertinoIcons.eye_slash)
                          : const Icon(Icons.remove_red_eye_outlined),
                      onPressed: () {
                        isStrar = !isStrar;
                        setState(() {});
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF8A4C7D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () async {
                        if (name.text.isNotEmpty &&
                            passworld.text.length >= 8) {
                          await Preferences.storge.setString(
                            "name",
                            name.text,
                          );
                          var list = Preferences.storge.getStringList('user');
                          if (list!.contains(name.text)) {
                            var index = list.indexOf(name.text);
                            var malumot = Preferences.storge.getStringList("malumot");
                           var cod = malumot![index].split(':')[2];
                            if(cod == passworld.text) {
                              await Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Intro(),
                                ),
                              );
                            }
                          }
                          await Preferences.storge.setBool("isReg", true);
                          debugPrint(
                            Preferences.storge
                                .getStringList("malumot")
                                .toString(),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                "Email or password Error!",
                              ), // Fix: Typo correction
                            ),
                          );
                        }
                      },
                      child: const Icon(
                        Icons.arrow_forward_rounded,
                        color: CupertinoColors.white,
                      ),
                    )
                  ],
                ),
                const Gap(160),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpPages(),
                          ),
                        );
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Passwords",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
