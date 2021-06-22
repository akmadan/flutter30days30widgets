import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatefulWidget {
  const AnimatedTextWidget({Key? key}) : super(key: key);

  @override
  _AnimatedTextWidgetState createState() => _AnimatedTextWidgetState();
}

class _AnimatedTextWidgetState extends State<AnimatedTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Text')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Akshit Madan',
                textStyle: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
                speed: const Duration(milliseconds: 100),
              ),
            ],
            totalRepeatCount: 4,
            pause: const Duration(milliseconds: 200),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
          AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText(
                'HELLO',
                textStyle: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RotateAnimatedText(
                'BEAUTIFUL',
                textStyle: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RotateAnimatedText(
                'WORLD',
                textStyle: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
          AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('Hello World'),
              WavyAnimatedText('Look at the waves'),
            ],
            isRepeatingAnimation: true,
            onTap: () {
              print("Tap Event");
            },
          ),
        ],
      )),
    );
  }
}
