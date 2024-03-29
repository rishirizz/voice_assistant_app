import 'package:flutter/material.dart';
import 'package:voice_assistant_app/screens/home_screen.dart';
import 'package:voice_assistant_app/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Voice Assistant App',
      theme: ThemeData.light(
        useMaterial3: true,
      ).copyWith(
        scaffoldBackgroundColor: AppColor.whiteColor,
      ),
      home: const HomeScreen(),
    );
  }
}
