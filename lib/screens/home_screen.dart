import 'package:flutter/material.dart';
import 'package:voice_assistant_app/utils/colors.dart';

import '../widgets/voice_assistant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Voice Assistant',
        ),
        leading: const Icon(
          Icons.menu,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ).copyWith(
            bottom: 0,
          ),
          child: const Column(
            children: [
              VoiceAssistant(),
            ],
          ),
        ),
      ),
    );
  }
}
