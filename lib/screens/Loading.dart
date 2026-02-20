import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';
import 'Result.dart';

class Loading extends StatefulWidget {
  final double result;
  final String health;
  final String text;

  const Loading({
    super.key,
    required this.result,
    required this.health,
    required this.text,
  });

  @override
  State<Loading> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<Loading> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Result(
            result: widget.result,
            health: widget.health,
            text: widget.text,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscaffoldColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(color: kactionColor),
            const SizedBox(height: 20),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 15,
                fontFamily: 'Agne',
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('Just a moment...'),
                  TypewriterAnimatedText('Calculating your BMI...'),
                ],
                onTap: () {
                },
              ),
            ),
            // const Text(
            //   "Calculating your BMI...",
            //   style: TextStyle(color: Colors.white, fontSize: 18),
            // ),
          ],
        ),
      ),
    );
  }
}
