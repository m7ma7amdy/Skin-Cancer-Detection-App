

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../spacer.dart';

class patientHistory extends StatelessWidget {
  const patientHistory({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(45, 148, 140, 1.0),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 350.0, top: 25),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 30,
                )),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Image.asset(
                      "assets/images/pngs/img.png",
                      height: 120,
                      width: 120,
                    ),
                  ),
                  AnimatedTextKit(
                    isRepeatingAnimation: true,
                    animatedTexts: [
                      ColorizeAnimatedText("patient history",
                          textStyle: GoogleFonts.audiowide(
                              fontSize: 20.0, fontWeight: FontWeight.w600),
                          colors: <Color>[
                            Colors.white,
                            const Color.fromRGBO(252, 117, 167, 1.0),
                            Colors.black,
                            Colors.grey,
                          ]),
                    ],
                    repeatForever: true,
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 58.0),
                    child: Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          Container(
                            height: mediaquery.height/2,
                            width: mediaquery.width/2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromRGBO(31, 117, 109, 1.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText("Result",
                                          textStyle: GoogleFonts.audiowide(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600),
                                          colors: <Color>[
                                            Colors.white,
                                            const Color.fromRGBO(31, 117, 109, 1.0),
                                            Colors.black,
                                            Colors.grey,
                                          ]),
                                    ],
                                    repeatForever: true,
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 128.0),
                                  child: spacer(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText("Date",
                                          textStyle: GoogleFonts.audiowide(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600),
                                          colors: <Color>[
                                            Colors.white,
                                            const Color.fromRGBO(31, 117, 109, 1.0),
                                            Colors.black,
                                            Colors.grey,
                                          ]),
                                    ],
                                    repeatForever: true,
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: mediaquery.height/2,
                            width: mediaquery.width/2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromRGBO(31, 117, 109, 1.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText("Result",
                                          textStyle: GoogleFonts.audiowide(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600),
                                          colors: <Color>[
                                            Colors.white,
                                            const Color.fromRGBO(31, 117, 109, 1.0),
                                            Colors.black,
                                            Colors.grey,
                                          ]),
                                    ],
                                    repeatForever: true,
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 128.0),
                                  child: spacer(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText("Date",
                                          textStyle: GoogleFonts.audiowide(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600),
                                          colors: <Color>[
                                            Colors.white,
                                            const Color.fromRGBO(31, 117, 109, 1.0),
                                            Colors.black,
                                            Colors.grey,
                                          ]),
                                    ],
                                    repeatForever: true,
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: mediaquery.height/2,
                            width: mediaquery.width/2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromRGBO(31, 117, 109, 1.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText("Result",
                                          textStyle: GoogleFonts.audiowide(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600),
                                          colors: <Color>[
                                            Colors.white,
                                            const Color.fromRGBO(31, 117, 109, 1.0),
                                            Colors.black,
                                            Colors.grey,
                                          ]),
                                    ],
                                    repeatForever: true,
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 128.0),
                                  child: spacer(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText("Date",
                                          textStyle: GoogleFonts.audiowide(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600),
                                          colors: <Color>[
                                            Colors.white,
                                            const Color.fromRGBO(31, 117, 109, 1.0),
                                            Colors.black,
                                            Colors.grey,
                                          ]),
                                    ],
                                    repeatForever: true,
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: mediaquery.height/2,
                            width: mediaquery.width/2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromRGBO(31, 117, 109, 1.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText("Result",
                                          textStyle: GoogleFonts.audiowide(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600),
                                          colors: <Color>[
                                            Colors.white,
                                            const Color.fromRGBO(31, 117, 109, 1.0),
                                            Colors.black,
                                            Colors.grey,
                                          ]),
                                    ],
                                    repeatForever: true,
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 128.0),
                                  child: spacer(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText("Date",
                                          textStyle: GoogleFonts.audiowide(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600),
                                          colors: <Color>[
                                            Colors.white,
                                            const Color.fromRGBO(31, 117, 109, 1.0),
                                            Colors.black,
                                            Colors.grey,
                                          ]),
                                    ],
                                    repeatForever: true,
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: mediaquery.height/2,
                            width: mediaquery.width/2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromRGBO(31, 117, 109, 1.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText("Result",
                                          textStyle: GoogleFonts.audiowide(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600),
                                          colors: <Color>[
                                            Colors.white,
                                            const Color.fromRGBO(31, 117, 109, 1.0),
                                            Colors.black,
                                            Colors.grey,
                                          ]),
                                    ],
                                    repeatForever: true,
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 128.0),
                                  child: spacer(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText("Date",
                                          textStyle: GoogleFonts.audiowide(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600),
                                          colors: <Color>[
                                            Colors.white,
                                            const Color.fromRGBO(31, 117, 109, 1.0),
                                            Colors.black,
                                            Colors.grey,
                                          ]),
                                    ],
                                    repeatForever: true,
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: mediaquery.height/2,
                            width: mediaquery.width/2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromRGBO(31, 117, 109, 1.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText("Result",
                                          textStyle: GoogleFonts.audiowide(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600),
                                          colors: <Color>[
                                            Colors.white,
                                            const Color.fromRGBO(31, 117, 109, 1.0),
                                            Colors.black,
                                            Colors.grey,
                                          ]),
                                    ],
                                    repeatForever: true,
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 128.0),
                                  child: spacer(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText("Date",
                                          textStyle: GoogleFonts.audiowide(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600),
                                          colors: <Color>[
                                            Colors.white,
                                            const Color.fromRGBO(31, 117, 109, 1.0),
                                            Colors.black,
                                            Colors.grey,
                                          ]),
                                    ],
                                    repeatForever: true,
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
