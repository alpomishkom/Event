import 'package:flutter/material.dart';
import 'package:house_party_planning/pages/auth/sign_in_pages.dart';
import 'package:house_party_planning/pages/intro/intro.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  State<SplashPages> createState() => _SplashPagesState();
}
class _SplashPagesState extends State<SplashPages> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    bool isRegistered = preferences.getBool("isReg") ?? false;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => isRegistered ? const Intro() : const SignInPages(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
