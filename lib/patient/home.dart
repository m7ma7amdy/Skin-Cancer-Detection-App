import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/pages_chat/room.dart';
import 'package:test/scan.dart';
import 'package:test/services.dart';
import 'package:test/spacer2.dart';
import '../settings.dart';

class patientHome extends StatefulWidget {
      static const String routeName = "patientHome";

  const patientHome({super.key});
  @override
  State<patientHome> createState() => _patientHomeState();
}

int _selectedIndex = 0;
List<Widget> Widgetpages = [
  const patientHome(),
  const services(),
  const scan(),
      roomUser(),   
  const settings(),
];

class _patientHomeState extends State<patientHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(25, 153, 141, 1.0),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: AnimatedTextKit(
                  isRepeatingAnimation: true,
                  animatedTexts: [
                    ColorizeAnimatedText("3 common types of skin cancer",
                        textAlign: TextAlign.center,
                        textStyle: GoogleFonts.roboto(
                            fontSize: 18.0, fontWeight: FontWeight.w600),
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: FlipCard(
                fill: Fill.fillBack,
                // Fill the back side of the card to make in the same size as the front.
                direction: FlipDirection.HORIZONTAL,
                // default
                side: CardSide.FRONT,
                // The side to initially display.
                front: Image.asset(
                  "assets/images/pngs/cancerTypes.png",
                  height: size.height/3,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
                back: Container(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromRGBO(32, 178, 164, 1.0),
                    ),
                    height: 250,
                    width: 300,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 230,
                          width: 120,
                          color: const Color.fromRGBO(32, 178, 164, 1.0),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText("Basal cell carcinoma",
                                          textStyle: GoogleFonts.audiowide(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w600),
                                          colors: <Color>[
                                            Colors.white,
                                            const Color.fromRGBO(50, 150, 141, 1.0),
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
                                const SizedBox(
                                  height: 20,
                                ),
                                AnimatedTextKit(
                                  isRepeatingAnimation: false,
                                  animatedTexts: [
                                    ColorizeAnimatedText(
                                        "occurs most often on areas of the skin that are exposed to the sun, such as your head and neck",
                                        textStyle: GoogleFonts.roboto(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w600),
                                        colors: <Color>[
                                          Colors.white,
                                          const Color.fromRGBO(50, 150, 141, 1.0),
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
                        ),
                        const spacer2(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromRGBO(32, 178, 164, 1.0),
                          ),
                          height: 230,
                          width: 120,
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText(
                                          "Squamous cell carcinoma",
                                          textStyle: GoogleFonts.audiowide(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w600),
                                          colors: <Color>[
                                            Colors.white,
                                            const Color.fromRGBO(50, 150, 141, 1.0),
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
                                const SizedBox(
                                  height: 20,
                                ),
                                AnimatedTextKit(
                                  isRepeatingAnimation: true,
                                  animatedTexts: [
                                    ColorizeAnimatedText(
                                        "of the skin is a type of cancer that starts as a growth of cells on the skin",
                                        textStyle: GoogleFonts.roboto(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w600),
                                        colors: <Color>[
                                          Colors.white,
                                          const Color.fromRGBO(50, 150, 141, 1.0),
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
                        ),
                        const spacer2(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromRGBO(32, 178, 164, 1.0),
                          ),
                          height: 230,
                          width: 120,
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText(
                                          "Melanoma",
                                          textStyle: GoogleFonts.audiowide(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w600),
                                          colors: <Color>[
                                            Colors.white,
                                            const Color.fromRGBO(50, 150, 141, 1.0),
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
                                const SizedBox(
                                  height: 40,
                                ),
                                AnimatedTextKit(
                                  isRepeatingAnimation: true,
                                  animatedTexts: [
                                    ColorizeAnimatedText(
                                        "is a kind of skin cancer that starts in the melanocytes,that gives skin its color",
                                        textStyle: GoogleFonts.roboto(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w600),
                                        colors: <Color>[
                                          Colors.white,
                                          const Color.fromRGBO(50, 150, 141, 1.0),
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
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0.0, bottom: 10),
              child: Center(
                child: AnimatedTextKit(
                  isRepeatingAnimation: true,
                  animatedTexts: [
                    ColorizeAnimatedText("Some symptoms of skin cancer",
                        textAlign: TextAlign.center,
                        textStyle: GoogleFonts.roboto(
                            fontSize: 18.0, fontWeight: FontWeight.w600),
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
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: const Color.fromRGBO(0, 0, 0, .1),
              ),
              width: size.width,
              height: size.height/1.8,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/pngs/body2.png",
                    width: 500,
                    height: 500,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 42.0),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 100,
                          color: const Color.fromRGBO(32, 178, 164, 1.0),
                          child: Center(
                            child: AnimatedTextKit(
                              isRepeatingAnimation: true,
                              animatedTexts: [
                                ColorizeAnimatedText(
                                    "Some scars in the head area",
                                    textAlign: TextAlign.center,
                                    textStyle: GoogleFonts.roboto(
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w600),
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
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 5,
                          color: const Color.fromRGBO(0, 0, 0, 0.7),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 10.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: const Color.fromRGBO(32, 178, 164, 1.0),
                          ),
                          height: 50,
                          width: 140,
                          child: Center(
                            child: AnimatedTextKit(
                              isRepeatingAnimation: true,
                              animatedTexts: [
                                ColorizeAnimatedText(
                                    "An itchy feeling on the skin",
                                    textAlign: TextAlign.center,
                                    textStyle: GoogleFonts.roboto(
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w600),
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
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 5,
                          color: const Color.fromRGBO(0, 0, 0, 0.7),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 180, left: 10.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: const Color.fromRGBO(32, 178, 164, 1.0),
                          ),
                          height: 50,
                          width: 90,
                          child: Center(
                            child: AnimatedTextKit(
                              isRepeatingAnimation: true,
                              animatedTexts: [
                                ColorizeAnimatedText("Skin redness",
                                    textAlign: TextAlign.center,
                                    textStyle: GoogleFonts.roboto(
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w600),
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
                          ),
                        ),
                        Container(
                          width: 10,
                          height: 5,
                          color: const Color.fromRGBO(0, 0, 0, 0.7),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 200, left: 160.0),
                    child: Column(
                      children: [
                        Container(
                          width: 5,
                          height: 100,
                          color: const Color.fromRGBO(0, 0, 0, 0.7),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: const Color.fromRGBO(32, 178, 164, 1.0),
                          ),
                          height: 100,
                          width: 100,
                          child: Center(
                            child: AnimatedTextKit(
                              isRepeatingAnimation: true,
                              animatedTexts: [
                                ColorizeAnimatedText(
                                    "In the worst case, it may affect the heartbeat",
                                    textAlign: TextAlign.center,
                                    textStyle: GoogleFonts.roboto(
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w600),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 230.0),
                    child: Row(
                      children: [
                        Container(
                          width: 20,
                          height: 5,
                          color: const Color.fromRGBO(0, 0, 0, 0.7),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(32, 178, 164, 1.0),
                          ),
                          height: 60,
                          width: size.width/3,
                          child: Center(
                            child: AnimatedTextKit(
                              isRepeatingAnimation: true,
                              animatedTexts: [
                                ColorizeAnimatedText(
                                    " If detection is delayed,it affects the aerial follicles",
                                    textAlign: TextAlign.center,
                                    textStyle: GoogleFonts.roboto(
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w600),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
            icon: Icon(Icons.local_hospital),
            label: '',
            backgroundColor: Color.fromRGBO(20, 124, 115, 1.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
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
