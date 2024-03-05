import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:voice_assistant_app/utils/colors.dart';
import 'package:voice_assistant_app/widgets/prompt_bubble.dart';
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30,
            ).copyWith(
              bottom: 0,
            ),
            child: Column(
              children: [
                const VoiceAssistant(),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.borderColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20).copyWith(
                      topLeft: Radius.zero,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Hey there! What can I do for you today?',
                      style: TextStyle(
                        fontFamily: 'Cera-Pro',
                        color: AppColor.mainFontColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Here are a few prompts:',
                    style: TextStyle(
                      fontFamily: 'Cera-Pro',
                      color: AppColor.mainFontColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const PromptBubble(
                  title: 'Chat-GPT',
                  subtitle:
                      'A smarter way to stay organized and informed with Chat-GPT.',
                  bgColor: AppColor.firstSuggestionBoxColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                const PromptBubble(
                  title: 'Dall-E',
                  subtitle: 'Get inspaired and stay creative with your personal assistant powered by Dall-E.',
                  bgColor: AppColor.secondSuggestionBoxColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                const PromptBubble(
                  title: 'Smart Voice Assistant',
                  subtitle:
                      'Get the best of both worlds with a voice assistant powered by Chat-GPT and Dall-E.',
                  bgColor: AppColor.thirdSuggestionBoxColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
