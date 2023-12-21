import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:house_party_planning/main.dart';
import 'package:house_party_planning/pages/intro/intro.dart';

import '../controllor/controller.dart';

class SignUpPages extends StatefulWidget {
  const SignUpPages({super.key});

  @override
  State<SignUpPages> createState() => _SignUpPagesState();
}

class _SignUpPagesState extends State<SignUpPages> {
  TextEditingController email = TextEditingController();
  TextEditingController passworld = TextEditingController();
  TextEditingController name = TextEditingController();

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
                  "Create Account",
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
                    hintText: "Name",
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
                  controller: email,
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
                  controller: passworld,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: const TextStyle(color: Colors.black),
                    filled: true,
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
                      "Sign UP",
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
                        if (email.text.isNotEmpty &&
                            passworld.text.length >= 8 &&
                            name.text.isNotEmpty) {
                          // SharedPreferences storge = await SharedPreferences.getInstance();

                          Preferences.storge.setString("email", email.text);
                          Preferences.storge.setString("name", name.text);
                          Preferences.storge.setString("passworld", passworld.text);

                          var list = Preferences.storge.getStringList("malumot");
                          var list1 = Preferences.storge.getStringList("user");

                          if (list1 != null) {
                            list1.add(name.text);
                            Preferences.storge.setStringList('user', list1);
                          } else {
                            Preferences.storge.setStringList('user', [name.text]);
                          }
                          if (list != null) {
                            list.add('${name.text}:${email.text}:${passworld.text}');
                            Preferences.storge.setStringList('malumot', list);
                          } else {
                            Preferences.storge.setStringList('malumot', [
                              '${name.text}:${email.text}:${passworld.text}'
                            ]);
                          }
                          debugPrint(Preferences.storge.getStringList('malumot').toString());
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("passworld or email  is wrong"),
                            ),
                          );
                        }
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Intro(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.arrow_forward_rounded,
                        color: CupertinoColors.white,
                      ),
                    )
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
