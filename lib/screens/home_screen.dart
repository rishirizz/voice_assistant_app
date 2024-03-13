import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:voice_assistant_app/utils/colors.dart';
import 'package:voice_assistant_app/widgets/prompt_bubbles.dart';
import '../widgets/voice_assistant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SpeechToText speechToText = SpeechToText();
  String lastWords = '';

  @override
  void initState() {
    super.initState();
    initialiseSpeechToText();
  }

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
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.assistantBGColor,
        onPressed: () async {
          if (await speechToText.hasPermission && speechToText.isNotListening) {
            startListening();
          } else if (speechToText.isListening) {
            stopListening();
          } else {
            initialiseSpeechToText();
          }
        },
        child: const Icon(Icons.mic),
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
                    'Here are a few suggestions:',
                    style: TextStyle(
                      fontFamily: 'Cera-Pro',
                      color: AppColor.mainFontColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const PromptBubbles(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  initialiseSpeechToText() async {
    await speechToText.initialize();
    setState(() {}); //initialise and then rebuild the UI
  }

  void startListening() async {
    await speechToText.listen(onResult: onSpeechResult);
    setState(() {});
  }

  void stopListening() async {
    await speechToText.stop();
    setState(() {});
  }

  void onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      lastWords = result.recognizedWords;
    });
  }

  @override
  void dispose() {
    super.dispose();
    speechToText.stop();
  }
}
