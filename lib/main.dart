import 'package:flutter/material.dart';
import 'package:house_party_planning/pages/controllor/controller.dart';
import 'package:house_party_planning/pages/splash/splash_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await Preferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: const SplashPages(),
    );
  }
}
