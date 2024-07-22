import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/doctor/advices/custom_textfield_add.dart';
import 'package:test/settings.dart';

class patientFeedBack extends StatefulWidget {
  const patientFeedBack({super.key});

  @override
  State<patientFeedBack> createState() => _patientFeedBackState();
}

class _patientFeedBackState extends State<patientFeedBack> {
  TextEditingController feedBackText = TextEditingController();
  CollectionReference patientFeedBack =
      FirebaseFirestore.instance.collection('patientFeedBack');
  addFeedBack() async {
  String feedbackText = feedBackText.text.trim(); // حذف الفراغات الزائدة

  if (feedbackText.isNotEmpty) {
    try {
      await patientFeedBack.add({"feedBackText": feedbackText});
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Success"),
            content: const Text("Thanks for your feedback :)"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const settings()),
                  );
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    } catch (e) {
      print("Error");
    }
  } else {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Warning"),
          content: const Text("Please enter your feedback before submitting."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}



  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(45, 148, 140, 1.0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 350.0, top: 20),
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
                        ColorizeAnimatedText("FEEDBACK",
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
                          height: mediaquery.height / 2,
                          width: mediaquery.width / 1.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromRGBO(31, 117, 109, 1.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: AnimatedTextKit(
                                  isRepeatingAnimation: true,
                                  animatedTexts: [
                                    ColorizeAnimatedText(
                                      textAlign: TextAlign.center,
                                        "Was this App helpful?\nTell us about your FeedBack :)",
                                        textStyle: GoogleFonts.audiowide(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600),
                                        colors: <Color>[
                                          Colors.white,
                                          const Color.fromRGBO(
                                              45, 147, 139, 1.0),
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
                              TextFormAdd(
                                  hintText: "Enter your FeedBack",
                                  myController: feedBackText),
                              MaterialButton(
                                height: 40,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                color: Color.fromRGBO(32, 178, 164, 1.0),
                                textColor: Colors.white,
                                onPressed: () {
                                  addFeedBack();
                                },
                                child: const Text("Add"),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
