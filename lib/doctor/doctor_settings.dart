import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/doctor/auth_service_doctor.dart';
import 'package:test/doctor/room_add_advice_warning.dart';
import 'package:test/login.dart';
import 'package:test/pages_chat/room.dart';

import 'doctor_change_password.dart';
import 'doctor_delete_account.dart';
import 'doctor_edit_profile.dart';
import 'doctor_feedback.dart';
import 'home_doctor.dart';

class doctorsettings extends StatefulWidget {
  const doctorsettings({super.key});

  @override
  State<doctorsettings> createState() => _doctorsettingsState();
}

int _selectedIndex = 0;
List<Widget> Widgetpages = [
  const doctorHome(),
  const roomAddAdviceWarning(),
  roomUser(),
  const doctorsettings(),
];

class _doctorsettingsState extends State<doctorsettings> {
  void logout() {
    // Get auth service
    final auth = AuthServiceDoctor();
    auth.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: const Color.fromRGBO(45, 161, 151, 1.0),
      body: Column(
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
              ColorizeAnimatedText("app Settings",
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
              child: Container(
                height: 370,
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromRGBO(31, 117, 109, 1.0),
                ),
                child: Column(
                  children: [
                    AnimatedTextKit(
                      isRepeatingAnimation: true,
                      animatedTexts: [
                        ColorizeAnimatedText("Account Settings",
                            textAlign: TextAlign.center,
                            textStyle: GoogleFonts.roboto(
                                fontSize: 22.0, fontWeight: FontWeight.w600),
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const doctoreditProfile()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Edit profile",
                              style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_right_sharp,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                   const ChangePasswordScreenD()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Change password",
                              style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_right_sharp,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DeleteAccountScreenD()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Delete account",
                              style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_right_sharp,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const doctorFeedBack()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Feedback",
                              style: GoogleFonts.rubik(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_right_sharp,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: logout,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 50, left: 50),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromRGBO(0, 0, 0, 0.2),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "Log out",
                                  style: GoogleFonts.rubik(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_right_sharp,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
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
              builder: (context) => Widgetpages.elementAt(_selectedIndex)));
    });
  }
}
