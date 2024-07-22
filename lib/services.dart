
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/pages_chat/room.dart';
import 'package:test/patient/common_advices.dart';
import 'package:test/patient/drs&hospitals.dart';
import 'package:test/patient/home.dart';
import 'package:test/settings.dart';
import 'package:test/spacer.dart';

import 'scan.dart';

class services extends StatefulWidget {
  const services({super.key});

  @override
  State<services> createState() => _servicesState();
}

int _selectedIndex = 0;
List<Widget> Widgetpages = [
  const patientHome(),
  const services(),
  const scan(),
      roomUser(),   

  const settings(),
];

class _servicesState extends State<services> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(45, 161, 151, 1.0),
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


      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Center(
                child: Container(
                  width:  size.width,
                  height: size.height/2.5,
                  color: const Color.fromRGBO(20, 124, 115, 1.0),
                  child: Column(
                    children: [
                      AnimatedTextKit(
                        isRepeatingAnimation: true,
                        animatedTexts: [
                          ColorizeAnimatedText(
                              "common Advices",
                              textAlign: TextAlign.center,
                              textStyle: GoogleFonts.roboto(
                                  fontSize: 22.0,
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
                      const spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 180,
                            height: 250,
                            child: Column(
                              children: [
                                AnimatedTextKit(
                                  isRepeatingAnimation: true,
                                  animatedTexts: [
                                    ColorizeAnimatedText(
                                        "We have provided a set of advice and warnings developed by a group of specialist doctors with the aim of obtaining greater care.",
                                        textAlign: TextAlign.center,
                                        textStyle: GoogleFonts.roboto(
                                            fontSize: 18.0,
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
                              ],
                            ),
                          ),
                          Container(
                              width: 5,
                              height: 200,
                              color: const Color.fromRGBO(50, 149, 140, 1.0)
                          ),
                          Column(
                            children: [
                              Image.asset("assets/images/pngs/advices.png",
                                height: size.height/5, width: size.width/2,),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const roomAddAdviceWarningP()));
                                },
                                child: Container(
                                    width: size.width/2.2,
                                    height: size.height/13,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color.fromRGBO(50, 149, 140, 1.0),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 2,
                                        )
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Common advice", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    )
                                ),
                              )
        
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Center(
                child: Container(
                  width: size.width,
                  height: size.height/2.3,
                  color: const Color.fromRGBO(20, 124, 115, 1.0),
                  child: Column(
                    children: [
                      AnimatedTextKit(
                        isRepeatingAnimation: true,
                        animatedTexts: [
                          ColorizeAnimatedText(
                              "best Doctors/Closest hospital",
                              textAlign: TextAlign.center,
                              textStyle: GoogleFonts.roboto(
                                  fontSize: 22.0,
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
                       const spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 180,
                            height: 250,
                            child: Column(
                              children: [
                                AnimatedTextKit(
                                  isRepeatingAnimation: true,
                                  animatedTexts: [
                                    ColorizeAnimatedText(
                                        "Through this service, you will be able to know the nearest hospitals for you and also the best doctors in your governorate and the rate of them ",
                                        textAlign: TextAlign.center,
                                        textStyle: GoogleFonts.roboto(
                                            fontSize: 18.0,
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
                              ],
                            ),
                          ),
                          Container(
                              width: 5,
                              height: 200,
                              color: const Color.fromRGBO(50, 149, 140, 1.0)
                          ),
                          Column(
                            children: [
                              Image.asset("assets/images/pngs/dr.png",
                                height: size.height/5, width: size.width/2,),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Hospitals()));
                                },
                                child: Container(
                                    width: size.width/2.2,
                                    height: size.height/13,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color.fromRGBO(50, 149, 140, 1.0),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 2,
                                        )
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "   best doctors\nclosest hospital",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                    )
                                ),
                              )

                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Widgetpages.elementAt(_selectedIndex)));
    });
  }
}
