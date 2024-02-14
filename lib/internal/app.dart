import 'package:flutter/material.dart';
import 'package:kids_game/presentation/screen/choose_character_screen.dart';
import 'package:kids_game/presentation/screen/splash_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.transparent),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
