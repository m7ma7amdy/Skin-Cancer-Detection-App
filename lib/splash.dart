import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

class splashScreen extends StatelessWidget {
  static const String routeName = "splash_screen";

  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const login()));
      },
    );
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: const Color.fromRGBO(50, 150, 141, 1.0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/pngs/img.png",
                height: 100,
                width: 100,
              ),
              AnimatedTextKit(
                isRepeatingAnimation: true,
                animatedTexts: [
                  ColorizeAnimatedText("Skin Cancer Detecter",
                      textStyle: GoogleFonts.audiowide(
                          fontSize: 20.0, fontWeight: FontWeight.w600),
                      colors: <Color>[
                        Colors.white,
                        const Color.fromRGBO(50, 149, 140, 1.0),
                        Colors.black,
                        Colors.grey,
                      ]),
                ],
                repeatForever: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
