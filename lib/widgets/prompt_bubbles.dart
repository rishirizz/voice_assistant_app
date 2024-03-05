import 'package:flutter/material.dart';
import 'package:voice_assistant_app/widgets/prompt_bubble.dart';

import '../utils/colors.dart';

class PromptBubbles extends StatelessWidget {
  const PromptBubbles({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 30,
        ),
        PromptBubble(
          title: 'Chat-GPT',
          subtitle:
              'A smarter way to stay organized and informed with Chat-GPT.',
          bgColor: AppColor.firstSuggestionBoxColor,
        ),
        SizedBox(
          height: 20,
        ),
        PromptBubble(
          title: 'Dall-E',
          subtitle:
              'Get inspaired and stay creative with your personal assistant powered by Dall-E.',
          bgColor: AppColor.secondSuggestionBoxColor,
        ),
        SizedBox(
          height: 20,
        ),
        PromptBubble(
          title: 'Smart Voice Assistant',
          subtitle:
              'Get the best of both worlds with a voice assistant powered by Chat-GPT and Dall-E.',
          bgColor: AppColor.thirdSuggestionBoxColor,
        ),
      ],
    );
  }
}
