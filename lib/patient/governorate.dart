
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';
import '../spacer.dart';
import 'doctor_card.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.vezeeta.com/ar/%D8%AF%D9%83%D8%AA%D9%88%D8%B1/%D8%AE%D8%AF%D9%85%D8%A9/%D8%A3%D9%88%D8%B1%D8%A7%D9%85-%D8%A7%D9%84%D8%AC%D9%84%D8%AF/%D9%83%D9%84-%D8%A7%D9%84%D8%AA%D8%AE%D8%B5%D8%B5%D8%A7%D8%AA/%D9%85%D8%B5%D8%B1');

class govrernment extends StatelessWidget {
  final String govername;
  final String doctorName;
  final String doctoraddress;
  final String doctorrate;
  final String doctortime;
  final String doctorphoto;
  final String doctorName2;
  final String doctoraddress2;
  final String doctorrate2;
  final String doctortime2;
  final String doctorphoto2;
  final String hospital1;
  final String hospitalname1;
  final String hospital2;
  final String hospitalname2;


  const govrernment({super.key, required this.govername, required this.doctorName, required this.doctoraddress, required this.doctorrate, required this.doctortime, required this.doctorphoto, required this.doctorName2, required this.doctoraddress2, required this.doctorrate2, required this.doctortime2, required this.doctorphoto2, required this.hospital1, required this.hospital2, required this.hospitalname1, required this.hospitalname2,});

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 250.0,
                        child: TextLiquidFill(
                          text: govername,textAlign: TextAlign.center,
                          waveColor: Color.fromRGBO(19, 115, 107, 1.0),
                          boxBackgroundColor: Colors.white,
                          textStyle: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                          boxHeight: 150.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0, left: 10),
                        child: SingleChildScrollView(
                          child: Container(
                            width: mediaquery.width/1.1,
                            height: mediaquery.height/1.7,
                            color: Color.fromRGBO(10, 75, 69, 1.0),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/pngs/medical-team.png",
                                    height: 100,
                                    width: 100,
                                  ),
                                  AnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    animatedTexts: [
                                      ColorizeAnimatedText(
                                          "best Doctors",
                                          textAlign: TextAlign.center,
                                          textStyle: GoogleFonts.roboto(
                                              fontSize: 22.0,
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

                                  doctorCard(doctorName: doctorName, doctoraddress: doctoraddress, doctorrate: doctorrate, doctortime: doctortime, doctorphoto:  doctorphoto),
                                  spacer(),
                                  doctorCard(doctorName: doctorName2, doctoraddress: doctoraddress2, doctorrate: doctorrate2, doctortime: doctortime2, doctorphoto: doctorphoto2),
                                  spacer(),
                                  AnimatedButton.strip(
                                    backgroundColor: Color.fromRGBO(29, 164, 152, 1.0),
                                    width: mediaquery.width / 2.1,
                                    height: 50,
                                    text: 'Book Now',
                                    isReverse: true,
                                    selectedTextColor: Colors.black,
                                    stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
                                    selectedBackgroundColor:
                                    Color.fromRGBO(22, 126, 119, 1.0),
                                    textStyle: GoogleFonts.nunito(
                                        fontSize: 28,
                                        letterSpacing: 5,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300),
                                    onPress: _launchUrl,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0,left: 10,top: 10),
                        child: Container(
                          width: mediaquery.width/1.1,
                          height: mediaquery.height/1.4,
                          color: Color.fromRGBO(10, 75, 69, 1.0),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/pngs/hospital.png",
                                  height: 100,
                                  width: 100,
                                ),
                                // AnimatedTextKit(
                                //   isRepeatingAnimation: true,
                                //   animatedTexts: [
                                //     ColorizeAnimatedText(
                                //         "closest hospital",
                                //         textAlign: TextAlign.center,
                                //         textStyle: GoogleFonts.roboto(
                                //             fontSize: 22.0,
                                //             fontWeight: FontWeight.w600),
                                //         colors: <Color>[
                                //           Color.fromRGBO(255, 255, 255, 1.0),
                                //           Color.fromRGBO(25, 152, 140, 1.0),
                                //           Colors.black,
                                //           Colors.grey,
                                //         ]),
                                //   ],
                                //   repeatForever: true,
                                //   onTap: () {
                                //     print("Tap Event");
                                //   },
                                // ),
                                Container(
                                  width: mediaquery.width/1.3,
                                  height: mediaquery.height/3,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: Color.fromRGBO(255, 255, 255, 1.0),
                                      )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 0),
                                    child: FlipCard(
                                      fill: Fill.fillBack,
                                      // Fill the back side of the card to make in the same size as the front.
                                      direction: FlipDirection.HORIZONTAL,
                                      // default
                                      side: CardSide.FRONT,
                                      // The side to initially display.
                                      front: Image.asset(
                                        hospital1,
                                        height: mediaquery.height/4,
                                        width: mediaquery.width/1.4,
                                        fit: BoxFit.fill,
                                      ),
                                      back:  Container(
                                        color:Color.fromRGBO(25, 152, 140, 1.0),
                                        child: Center(
                                          child: Text(hospitalname1,textAlign: TextAlign.center,style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.w600,
                                          ),),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                spacer(),
                                Container(
                                  width: mediaquery.width/1.3,
                                  height: mediaquery.height/3,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: Color.fromRGBO(255, 255, 255, 1.0),
                                      )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 0),
                                    child: FlipCard(
                                      fill: Fill.fillBack,
                                      // Fill the back side of the card to make in the same size as the front.
                                      direction: FlipDirection.HORIZONTAL,
                                      // default
                                      side: CardSide.FRONT,
                                      // The side to initially display.
                                      front: Image.asset(
                                        hospital2,
                                        height: mediaquery.height/4,
                                        width: mediaquery.width/1.4,
                                        fit: BoxFit.fill,
                                      ),
                                      back:  Center(
                                        child: Text(hospitalname2,style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.w600,
                                        ),),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}