import 'package:flutter/material.dart';
import 'package:voice_assistant_app/utils/colors.dart';

class PromptBubble extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color bgColor;
  const PromptBubble(
      {required this.title,
      required this.subtitle,
      required this.bgColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 4,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontFamily: 'Cera-Pro',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 2.0,
        ).copyWith(
          bottom: 4,
        ),
        child: Text(
          subtitle,
          style: const TextStyle(
            fontFamily: 'Cera-Pro',
            color: AppColor.blackColor,
          ),
        ),
      ),
      tileColor: bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
