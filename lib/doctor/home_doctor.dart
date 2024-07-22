import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/doctor/room_add_advice_warning.dart';
import 'package:test/pages_chat/room.dart';

import 'doctor_settings.dart';

class doctorHome extends StatefulWidget {
  static const String routeName = "doctorHome";

  const doctorHome({super.key});

  @override
  State<doctorHome> createState() => _doctorHomeState();
}

int _selectedIndex = 0;
List<Widget> Widgetpages = [
  const doctorHome(),
  const roomAddAdviceWarning(),
  roomUser(),
  const doctorsettings(),
];

class _doctorHomeState extends State<doctorHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(25, 153, 141, 1.0),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: [
                  AnimatedTextKit(
                    isRepeatingAnimation: true,
                    animatedTexts: [
                      ColorizeAnimatedText("welcome back doctor",
                          textAlign: TextAlign.center,
                          textStyle: GoogleFonts.roboto(
                              fontSize: 22.0, fontWeight: FontWeight.w600),
                          colors: <Color>[
                            const Color.fromRGBO(255, 255, 255, 1.0),
                            const Color.fromRGBO(253, 78, 89, 1.0),
                            Colors.black,
                            Colors.grey,
                          ]),
                    ],
                    repeatForever: true,
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Image.asset(
                        "assets/images/pngs/doctor3.png",
                        width: 240,
                        height: 200,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: FlipCard(
                fill: Fill.fillFront,
                // Fill the back side of the card to make in the same size as the front.
                direction: FlipDirection.VERTICAL,
                // default
                side: CardSide.FRONT,
                // The side to initially display.
                front: Container(
                  width: 200,
                  height: 300,
                  color: const Color.fromRGBO(18, 112, 104, 0.0),
                  child: Column(
                    children: [
                      AnimatedTextKit(
                        isRepeatingAnimation: true,
                        animatedTexts: [
                          ColorizeAnimatedText(
                              "We are grateful to have you here\n and we hope that you will continue to provide your services.",
                              textAlign: TextAlign.center,
                              textStyle: GoogleFonts.roboto(
                                  fontSize: 13.0, fontWeight: FontWeight.w600),
                              colors: <Color>[
                                const Color.fromRGBO(255, 255, 255, 1.0),
                                const Color.fromRGBO(25, 152, 140, 1.0),
                                Colors.black,
                                Colors.grey,
                              ]),
                        ],
                        repeatForever: true,
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                      Image.asset(
                        "assets/images/pngs/doctor5.png",
                        width: 320,
                        height: 130,
                      )
                    ],
                  ),
                ),
                back: Column(
                  children: [
                    AnimatedTextKit(
                      isRepeatingAnimation: true,
                      animatedTexts: [
                        ColorizeAnimatedText(
                            "To everyone who cares about people and maintains their health,\n thank you",
                            textAlign: TextAlign.center,
                            textStyle: GoogleFonts.roboto(
                                fontSize: 13.0, fontWeight: FontWeight.w600),
                            colors: <Color>[
                              const Color.fromRGBO(255, 255, 255, 1.0),
                              const Color.fromRGBO(25, 152, 140, 1.0),
                              Colors.black,
                              Colors.grey,
                            ]),
                      ],
                      repeatForever: true,
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                    Image.asset(
                      "assets/images/pngs/doc4.png",
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromRGBO(25, 153, 141, 1.0),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(20, 124, 115, 1.0),
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_rounded),
            label: '',
            backgroundColor: Color.fromRGBO(20, 124, 115, 1.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: '',
            backgroundColor: Color.fromRGBO(20, 124, 115, 1.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
            backgroundColor: Color.fromRGBO(20, 124, 115, 1.0),
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Widgetpages.elementAt(index)));
    });
  }
}
