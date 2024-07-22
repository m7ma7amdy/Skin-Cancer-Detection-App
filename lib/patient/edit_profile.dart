

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../spacer.dart';

class editProfile extends StatelessWidget {
  const editProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(45, 148, 140, 1.0),
      body: SingleChildScrollView(
        child: Column(
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
                      ColorizeAnimatedText("Edit Profile",
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
                        height: mediaquery.height/2,
                        width: mediaquery.width/1.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromRGBO(31, 117, 109, 1.0),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/pngs/manp.png",
                              height: 80,
                              width: 80,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const spacer(),
                            const spacer(),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 50.0, right: 50),
                              child: TextField(
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: const BorderSide(
                                        color:Color.fromRGBO(25, 153, 141, 1.0),)),
                                  labelText: "First Name",
                                  labelStyle: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 50.0, right: 50),
                              child: TextField(
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: const BorderSide(
                                        color:Color.fromRGBO(25, 153, 141, 1.0),)),

                                  labelText: "Last name",
                                  labelStyle: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600),
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
          ],
        ),
      ),
    );
  }

  add_radio_button(int btnValue, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          activeColor: Colors.green,
          value: btnValue,
          groupValue: -1,
          onChanged: (int? value) {},
        ),
        Text(title)
      ],
    );
  }
}
