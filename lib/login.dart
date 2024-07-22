import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/doctor/auth_gate_doctor.dart';
import 'package:test/services/auth/auth_gate_patient.dart';


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: const Color.fromRGBO(50, 150, 141, 1.0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
                    ColorizeAnimatedText("Start your journey",
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
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: const Color.fromRGBO(0, 0, 0, 0.7),
                          ),
                          width: 370,
                          height: 550,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 40.0),
                                child: Image.asset(
                                  "assets/images/pngs/patient.png",
                                  height: 170,
                                  width: 170,
                                ),
                              ),
                              AnimatedTextKit(
                                isRepeatingAnimation: true,
                                animatedTexts: [
                                  ColorizeAnimatedText("Patient",
                                      textStyle: GoogleFonts.audiowide(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600),
                                      colors: <Color>[
                                        Colors.white,
                                        const Color.fromRGBO(52, 141, 214, 1.0),
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
                                          builder: (context) => const AuthGate()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Container(
                                      width: 190,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color:
                                              const Color.fromRGBO(50, 149, 140, 1.0),
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 2,
                                          )),
                                      child: const Center(
                                        child: Text(
                                          "Login",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                              // GestureDetector(
                              //   onTap: () {
                              //     Navigator.push(
                              //         context,
                              //         MaterialPageRoute(
                              //             builder: (context) =>  AuthGate()));
                              //   },
                              //   child: Padding(
                              //     padding: const EdgeInsets.only(top: 30),
                              //     child: Container(
                              //         width: 190,
                              //         height: 60,
                              //         decoration: BoxDecoration(
                              //             borderRadius: BorderRadius.circular(50),
                              //             color:
                              //                 const Color.fromRGBO(50, 149, 140, 1.0),
                              //             border: Border.all(
                              //               color: Colors.white,
                              //               width: 2,
                              //             )),
                              //         child: const Center(
                              //           child: Text(
                              //             "Sign Up",
                              //             style: TextStyle(
                              //               color: Colors.white,
                              //               fontSize: 20,
                              //               fontWeight: FontWeight.bold,
                              //             ),
                              //           ),
                              //         )),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: const Color.fromRGBO(0, 0, 0, 0.7),
                          ),
                          width: 370,
                          height: 550,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 40.0),
                                child: Image.asset(
                                  "assets/images/pngs/doctor.png",
                                  height: 170,
                                  width: 170,
                                ),
                              ),
                              AnimatedTextKit(
                                isRepeatingAnimation: true,
                                animatedTexts: [
                                  ColorizeAnimatedText("Doctor",
                                      textStyle: GoogleFonts.audiowide(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600),
                                      colors: <Color>[
                                        Colors.white,
                                        const Color.fromRGBO(52, 141, 214, 1.0),
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
                                          builder: (context) => const AuthGateDoctor()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Container(
                                      width: 190,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color:
                                              const Color.fromRGBO(50, 149, 140, 1.0),
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 2,
                                          )),
                                      child: const Center(
                                        child: Text(
                                          "Login",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                              // GestureDetector(
                              //   onTap: () {
                              //     Navigator.push(
                              //         context,
                              //         MaterialPageRoute(
                              //             builder: (context) => doctorSignUp()));
                              //   },
                              //   child: Padding(
                              //     padding: EdgeInsets.only(top: 30),
                              //     child: Container(
                              //         child: Center(
                              //           child: Text(
                              //             "Sign Up",
                              //             style: TextStyle(
                              //               color: Colors.white,
                              //               fontSize: 20,
                              //               fontWeight: FontWeight.bold,
                              //             ),
                              //           ),
                              //         ),
                              //         width: 190,
                              //         height: 60,
                              //         decoration: BoxDecoration(
                              //             borderRadius: BorderRadius.circular(50),
                              //             color:
                              //                 Color.fromRGBO(50, 149, 140, 1.0),
                              //             border: Border.all(
                              //               color: Colors.white,
                              //               width: 2,
                              //             ))),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
