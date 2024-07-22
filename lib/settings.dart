import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/login.dart';
import 'package:test/pages_chat/room.dart';
import 'package:test/patient/change_password.dart';
import 'package:test/patient/delete_account.dart';
import 'package:test/patient/feedback.dart';
import 'package:test/patient/home.dart';
import 'package:test/scan.dart';
import 'package:test/services.dart';
import 'package:test/services/auth/auth_service_patient.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

int _selectedIndex = 0;
List<Widget> Widgetpages = [
  const patientHome(),
  const services(),
  const scan(),
      roomUser(),   
  const settings(),
];

class _settingsState extends State<settings> {
  void logout() {
    // Get auth service
    final auth = AuthService();
    auth.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const login()));
  }

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
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
      backgroundColor: const Color.fromRGBO(45, 161, 151, 1.0),
      body: SingleChildScrollView(
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
              padding: const EdgeInsets.only(top: 38.0),
              child: Center(
                child: Container(
                  height: mediaquery.height / 2,
                  width: mediaquery.width / 1.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromRGBO(31, 117, 109, 1.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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

                      SizedBox(height:30),

                      // GestureDetector(
                      //   onTap: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => const editProfile()),
                      //     );
                      //   },
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Padding(
                      //         padding: const EdgeInsets.all(15.0),
                      //         child: Text(
                      //           "Edit profile",
                      //           style: GoogleFonts.rubik(
                      //               color: Colors.black,
                      //               fontSize: 18.0,
                      //               fontWeight: FontWeight.normal),
                      //         ),
                      //       ),
                      //       const Icon(
                      //         Icons.arrow_right_sharp,
                      //         size: 30,
                      //       )
                      //     ],
                      //   ),
                      // ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                     const ChangePasswordScreenP()),
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
                                builder: (context) => DeleteAccountScreenP()),
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
                      // GestureDetector(
                      //   onTap: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => const patientHistory()),
                      //     );
                      //   },
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Padding(
                      //         padding: const EdgeInsets.all(15.0),
                      //         child: Text(
                      //           "Patient history",
                      //           style: GoogleFonts.rubik(
                      //               color: Colors.black,
                      //               fontSize: 18.0,
                      //               fontWeight: FontWeight.normal),
                      //         ),
                      //       ),
                      //       const Icon(
                      //         Icons.arrow_right_sharp,
                      //         size: 30,
                      //       )
                      //     ],
                      //   ),
                      // ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const patientFeedBack()),
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
