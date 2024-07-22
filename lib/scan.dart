import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test/pages_chat/room.dart';
import 'package:test/patient/Scan_upload2.dart';
import 'package:test/patient/home.dart';
import 'package:test/services.dart';
import 'package:test/settings.dart';

class scan extends StatefulWidget {
  const scan({super.key});

  @override
  State<scan> createState() => _scanState();
}

int _selectedIndex = 0;
List<Widget> Widgetpages = [
  const patientHome(),
  const services(),
  const scan(),
     roomUser(),
  const settings(),
];

class _scanState extends State<scan> {
  File? image;
  File? uimage;

  final imagepicker = ImagePicker();


  // uploadImage() async {
  //   var pickedImage = await imagepicker.pickImage(source: ImageSource.gallery);
  //   if (pickedImage != null) {
  //     image = File(pickedImage.path);
  //   } else {}
  // }
  // takeImage() async {
  //   var pickedImage = await imagepicker.pickImage(source: ImageSource.camera);
  //   if (pickedImage != null) {
  //     image = File(pickedImage.path);
  //   } else {}
  // }


  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 178, 164, 1.0),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0.0, bottom: 10),
                  child: Center(
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        ColorizeAnimatedText("please follow the next steps",
                            textAlign: TextAlign.center,
                            textStyle: GoogleFonts.roboto(
                                fontSize: 18.0, fontWeight: FontWeight.w600),
                            colors: <Color>[
                              Color.fromRGBO(255, 255, 255, 1.0),
                              Color.fromRGBO(25, 152, 140, 1.0),
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0, left: 10.0),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/pngs/dermatology.png",
                              height: 50,
                              width: 50,
                            ),
                            Container(
                              height: 60,
                              width: 80,
                              color: Color.fromRGBO(22, 134, 125, 1.0),
                              child: Center(
                                child: AnimatedTextKit(
                                  isRepeatingAnimation: true,
                                  animatedTexts: [
                                    ColorizeAnimatedText(
                                        "move the camera to the area",
                                        textAlign: TextAlign.center,
                                        textStyle: GoogleFonts.roboto(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w600),
                                        colors: <Color>[
                                          Color.fromRGBO(255, 255, 255, 1.0),
                                          Color.fromRGBO(25, 152, 140, 1.0),
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
                        padding: const EdgeInsets.only(top: 10, left: 10.0),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/pngs/zoom-in.png",
                              height: 40,
                              width: 40,
                            ),
                            Container(
                              height: 60,
                              width: 80,
                              color: Color.fromRGBO(22, 134, 125, 1.0),
                              child: Center(
                                child: AnimatedTextKit(
                                  isRepeatingAnimation: true,
                                  animatedTexts: [
                                    ColorizeAnimatedText("Zoom in the camera",
                                        textAlign: TextAlign.center,
                                        textStyle: GoogleFonts.roboto(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w600),
                                        colors: <Color>[
                                          Color.fromRGBO(255, 255, 255, 1.0),
                                          Color.fromRGBO(25, 152, 140, 1.0),
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
                        padding: const EdgeInsets.only(top: 10, left: 10.0),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/pngs/scanner.png",
                              height: 40,
                              width: 40,
                            ),
                            Container(
                              height: 60,
                              width: 80,
                              color: Color.fromRGBO(22, 134, 125, 1.0),
                              child: Center(
                                child: AnimatedTextKit(
                                  isRepeatingAnimation: true,
                                  animatedTexts: [
                                    ColorizeAnimatedText(
                                        "Make sure the picture is clear",
                                        textAlign: TextAlign.center,
                                        textStyle: GoogleFonts.roboto(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w600),
                                        colors: <Color>[
                                          Color.fromRGBO(255, 255, 255, 1.0),
                                          Color.fromRGBO(25, 152, 140, 1.0),
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
                        padding: const EdgeInsets.only(top: 5, left: 10.0),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/pngs/idea.png",
                              height: 45,
                              width: 45,
                            ),
                            Container(
                              height: 60,
                              width: 80,
                              color: Color.fromRGBO(22, 134, 125, 1.0),
                              child: Center(
                                child: AnimatedTextKit(
                                  isRepeatingAnimation: true,
                                  animatedTexts: [
                                    ColorizeAnimatedText(
                                        "Make sure the lighting is good",
                                        textAlign: TextAlign.center,
                                        textStyle: GoogleFonts.roboto(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w600),
                                        colors: <Color>[
                                          Color.fromRGBO(255, 255, 255, 1.0),
                                          Color.fromRGBO(25, 152, 140, 1.0),
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
                SizedBox(height: 20,),
                // image==null?Text("xx"):Image.file(image!,height: 200,width: 400,),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color: Color.fromRGBO(0, 0, 0, .1),
                  ),
                  width: mediaquery.width,
                  height: mediaquery.height / 1.6,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/pngs/scan.png",
                        width: mediaquery.width,
                        height: mediaquery.height / 1.5,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => scan2()));

                                    },
                                    // onTap: uploadImage,
                                    child: Image.asset(
                                        "assets/images/pngs/upload1.png",
                                        width: 60,
                                        height: 60),
                                  ),
                                  AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText("upload",
                                          textAlign: TextAlign.center,
                                          textStyle: GoogleFonts.roboto(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w600),
                                          colors: <Color>[
                                            Color.fromRGBO(255, 255, 255, 1.0),
                                            Color.fromRGBO(25, 152, 140, 1.0),
                                            Colors.white,
                                            Colors.white,
                                          ]),
                                    ],
                                    repeatForever: true,
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => scan2()));
                                    },

                                    // onTap: takeImage,
                                    child: Image.asset("assets/images/pngs/scanner1.png",
                                        width: 60, height: 60),
                                  ),
                                  AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText("Scan",
                                          textAlign: TextAlign.center,
                                          textStyle: GoogleFonts.roboto(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w600),
                                          colors: <Color>[
                                            Color.fromRGBO(255, 255, 255, 1.0),
                                            Color.fromRGBO(25, 152, 140, 1.0),
                                            Colors.white,
                                            Colors.white,
                                          ]),
                                    ],
                                    repeatForever: true,
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(25, 153, 141, 1.0),
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
              builder: (context) => Widgetpages.elementAt(_selectedIndex)));
    });
  }
}
