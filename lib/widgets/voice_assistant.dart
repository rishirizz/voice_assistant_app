import 'package:flutter/material.dart';

import '../utils/colors.dart';

class VoiceAssistant extends StatelessWidget {
  const VoiceAssistant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        backgroundColor: AppColor.assistantBGColor,
        radius: 60,
        child: Image.asset(
          'assets/images/voice-assistant.png',
          height: 90,
          width: 90,
        ),
      ),
    );
  }
}
