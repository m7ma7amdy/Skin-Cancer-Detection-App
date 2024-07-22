import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart'
    as animated_button;
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'governorate.dart';

class Hospitals extends StatefulWidget {
  const Hospitals({super.key});

  @override
  State<Hospitals> createState() => _HospitalsState();
}

class _HospitalsState extends State<Hospitals> {
  bool cairo = false;
  bool giza = false;
  bool alex = false;
  bool sohag = false;
  bool assuit = false;
  bool asswan = false;
  bool luxor = false;
  bool NewValley = false;
  bool Matruh = false;
  bool Redsea = false;
  bool suez = false;
  bool sinai = false;
  bool helwan = false;
  bool monufia = false;
  bool kafr = false;
  bool dakahlia = false;

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(25, 152, 140, 1.0),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_outlined,
              size: 30,
            )),
      ),
      body: Scaffold(
        backgroundColor: Color.fromRGBO(25, 152, 140, 1.0),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              animated_button.AnimatedButton.strip(
                width: 300,
                height: 70,
                text: 'Cairo',
                isReverse: true,
                selectedTextColor: Colors.black,
                stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
                selectedBackgroundColor: Color.fromRGBO(16, 100, 92, 1.0),
                textStyle: GoogleFonts.nunito(
                    fontSize: 28,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
                onPress: () {
                  setState(() {
                    cairo = !cairo;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Visibility(
                  visible: cairo,
                  child: govrernment(
                    govername: 'Cairo',
                    doctorName: 'dr: Sherif Adel',
                    doctoraddress: 'Cairo',
                    doctorrate: '4.7',
                    doctortime: '8 to 8',
                    doctorphoto: 'assets/images/pngs/dr1.png',
                    doctorName2: 'dr: shahenda Ashraf',
                    doctoraddress2: 'cairo',
                    doctorrate2: '4.9',
                    doctortime2: '9 to 7',
                    doctorphoto2: 'assets/images/pngs/dr5.png',
                    hospital1: 'assets/images/hospitals/cairo1.jpg',
                    hospital2: 'assets/images/hospitals/cairo2.jpg',
                    hospitalname1: 'Safwat Al golf',
                    hospitalname2: 'Dar El - Shefa',
                  )),
              animated_button.AnimatedButton.strip(
                width: 300,
                height: 70,
                text: 'Giza',
                isReverse: true,
                selectedTextColor: Colors.black,
                stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
                selectedBackgroundColor: Color.fromRGBO(16, 100, 92, 1.0),
                textStyle: GoogleFonts.nunito(
                    fontSize: 28,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
                onPress: () {
                  setState(() {
                    giza = !giza;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Visibility(
                  visible: giza,
                  child: govrernment(
                    govername: 'Giza',
                    doctorName: 'dr: khaled amen',
                    doctoraddress: 'Giza',
                    doctorrate: '4.2',
                    doctortime: '12 to 9',
                    doctorphoto: 'assets/images/pngs/dr1.png',
                    doctorName2: 'dr: salma mostafa',
                    doctoraddress2: 'Giza',
                    doctorrate2: '4.3',
                    doctortime2: '9 to 12',
                    doctorphoto2: 'assets/images/pngs/dr5.png',
                    hospital1: 'assets/images/hospitals/giza1.jpg',
                    hospital2: 'assets/images/hospitals/giza2.jpg',
                    hospitalname1: 'Abou Al hool',
                    hospitalname2: 'Misr international hospital',
                  )),
              animated_button.AnimatedButton.strip(
                width: 300,
                height: 70,
                text: 'Alex',
                isReverse: true,
                selectedTextColor: Colors.black,
                stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
                selectedBackgroundColor: Color.fromRGBO(16, 100, 92, 1.0),
                textStyle: GoogleFonts.nunito(
                    fontSize: 28,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
                onPress: () {
                  setState(() {
                    alex = !alex;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Visibility(
                  visible: alex,
                  child: govrernment(
                    govername: 'Alexandria',
                    doctorName: 'dr: zeyad mohamed',
                    doctoraddress: 'Alexandria',
                    doctorrate: '4.6',
                    doctortime: '10 to 9',
                    doctorphoto: 'assets/images/pngs/dr1.png',
                    doctorName2: 'dr: mariam hossam',
                    doctoraddress2: 'Alexandria',
                    doctorrate2: '4.7',
                    doctortime2: '9 to 9',
                    doctorphoto2: 'assets/images/pngs/dr5.png',
                    hospital1: 'assets/images/hospitals/alex1.jpg',
                    hospital2: 'assets/images/hospitals/alex2.jpg',
                    hospitalname1: 'Alexandria international hospital',
                    hospitalname2: 'Smouha international hospital',
                  )),
              animated_button.AnimatedButton.strip(
                width: 300,
                height: 70,
                text: 'Sohag',
                isReverse: true,
                selectedTextColor: Colors.black,
                stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
                selectedBackgroundColor: Color.fromRGBO(16, 100, 92, 1.0),
                textStyle: GoogleFonts.nunito(
                    fontSize: 28,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
                onPress: () {
                  setState(() {
                    sohag = !sohag;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Visibility(
                  visible: sohag,
                  child: govrernment(
                    govername: 'Sohag',
                    doctorName: 'dr: Ahmed Nasser',
                    doctoraddress: 'Sohag',
                    doctorrate: '4.8',
                    doctortime: '7 to 10',
                    doctorphoto: 'assets/images/pngs/dr1.png',
                    doctorName2: 'DR: arwa mohamed',
                    doctoraddress2: 'Sohag',
                    doctorrate2: '3.9',
                    doctortime2: '8 to 7',
                    doctorphoto2: 'assets/images/pngs/dr5.png',
                    hospital1: 'assets/images/hospitals/sohag1.jpg',
                    hospital2: 'assets/images/hospitals/sohag2.jpg',
                    hospitalname1: 'masr hospital',
                    hospitalname2: 'university hospital',
                  )),
              animated_button.AnimatedButton.strip(
                width: 300,
                height: 70,
                text: 'Assuit',
                isReverse: true,
                selectedTextColor: Colors.black,
                stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
                selectedBackgroundColor: Color.fromRGBO(16, 100, 92, 1.0),
                textStyle: GoogleFonts.nunito(
                    fontSize: 28,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
                onPress: () {
                  setState(() {
                    assuit = !assuit;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Visibility(
                  visible: assuit,
                  child: govrernment(
                    govername: 'Assuit',
                    doctorName: 'dr: mina sadeky',
                    doctoraddress: 'Assuit',
                    doctorrate: '3.7',
                    doctortime: '8 to 8',
                    doctorphoto: 'assets/images/pngs/dr1.png',
                    doctorName2: 'dr: amina thabet',
                    doctoraddress2: 'Assuit',
                    doctorrate2: '3.3',
                    doctortime2: '8 to 8',
                    doctorphoto2: 'assets/images/pngs/dr5.png',
                    hospital1: 'assets/images/hospitals/asyut1.jpg',
                    hospital2: 'assets/images/hospitals/asyut2.jpg',
                    hospitalname1: 'awram hospital',
                    hospitalname2: 'Nile hospital',
                  )),
              animated_button.AnimatedButton.strip(
                width: 300,
                height: 70,
                text: 'Aswan',
                isReverse: true,
                selectedTextColor: Colors.black,
                stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
                selectedBackgroundColor: Color.fromRGBO(16, 100, 92, 1.0),
                textStyle: GoogleFonts.nunito(
                    fontSize: 28,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
                onPress: () {
                  setState(() {
                    asswan = !asswan;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Visibility(
                  visible: asswan,
                  child: govrernment(
                    govername: 'Aswan',
                    doctorName: 'dr: ghalab',
                    doctoraddress: 'Aswan',
                    doctorrate: '4.7',
                    doctortime: '10 to 7',
                    doctorphoto: 'assets/images/pngs/dr1.png',
                    doctorName2: 'dr: aseel mostafa',
                    doctoraddress2: 'Aswan',
                    doctorrate2: '4.3',
                    doctortime2: '8 to 12',
                    doctorphoto2: 'assets/images/pngs/dr5.png',
                    hospital1: 'assets/images/hospitals/aswan.jpg',
                    hospital2: 'assets/images/hospitals/aswan2.jpg',
                    hospitalname1: 'Aswan Oncology Center',
                    hospitalname2: 'alhelal AL ahmar hospital',
                  )),
              animated_button.AnimatedButton.strip(
                width: 300,
                height: 70,
                text: 'Luxor',
                isReverse: true,
                selectedTextColor: Colors.black,
                stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
                selectedBackgroundColor: Color.fromRGBO(16, 100, 92, 1.0),
                textStyle: GoogleFonts.nunito(
                    fontSize: 28,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
                onPress: () {
                  setState(() {
                    luxor = !luxor;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Visibility(
                  visible: luxor,
                  child: govrernment(
                    govername: 'Luxor',
                    doctorName: 'dr: mohamed wael',
                    doctoraddress: 'Luxor',
                    doctorrate: '4.5',
                    doctortime: '11 to 8',
                    doctorphoto: 'assets/images/pngs/dr1.png',
                    doctorName2: 'dr: eman mahmoud',
                    doctoraddress2: 'Luxor',
                    doctorrate2: '4.8',
                    doctortime2: '9 to 7',
                    doctorphoto2: 'assets/images/pngs/dr5.png',
                    hospital1:
                        'assets/images/hospitals/luxor safa hospital.jpg',
                    hospital2: 'assets/images/hospitals/luxor1.jpg',
                    hospitalname1: 'safa hospital',
                    hospitalname2: 'luxor international hospital',
                  )),
              animated_button.AnimatedButton.strip(
                width: 300,
                height: 70,
                text: 'New valley',
                isReverse: true,
                selectedTextColor: Colors.black,
                stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
                selectedBackgroundColor: Color.fromRGBO(16, 100, 92, 1.0),
                textStyle: GoogleFonts.nunito(
                    fontSize: 28,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
                onPress: () {
                  setState(() {
                    NewValley = !NewValley;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Visibility(
                  visible: NewValley,
                  child: govrernment(
                    govername: 'New valley',
                    doctorName: '_',
                    doctoraddress: '_',
                    doctorrate: '_',
                    doctortime: '_',
                    doctorphoto: 'assets/images/pngs/dr1.png',
                    doctorName2: 'dr: eman mahmoud',
                    doctoraddress2: 'Luxor',
                    doctorrate2: '4.8',
                    doctortime2: '9 to 7',
                    doctorphoto2: 'assets/images/pngs/dr5.png',
                    hospital1: 'assets/images/hospitals/hospital1.jpg',
                    hospital2: 'assets/images/hospitals/hospital1.jpg',
                    hospitalname1: 'Hospital 1',
                    hospitalname2: 'Hospital2',
                  )),
              animated_button.AnimatedButton.strip(
                width: 300,
                height: 70,
                text: 'Sinai',
                isReverse: true,
                selectedTextColor: Colors.black,
                stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
                selectedBackgroundColor: Color.fromRGBO(16, 100, 92, 1.0),
                textStyle: GoogleFonts.nunito(
                    fontSize: 28,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
                onPress: () {
                  setState(() {
                    sinai = !sinai;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Visibility(
                  visible: sinai,
                  child: govrernment(
                    govername: 'Sinai',
                    doctorName: '_',
                    doctoraddress: '_',
                    doctorrate: '_',
                    doctortime: '_',
                    doctorphoto: 'assets/images/pngs/dr1.png',
                    doctorName2: 'dr: eman mahmoud',
                    doctoraddress2: 'Luxor',
                    doctorrate2: '4.8',
                    doctortime2: '9 to 7',
                    doctorphoto2: 'assets/images/pngs/dr5.png',
                    hospital1: 'assets/images/hospitals/hospital1.jpg',
                    hospital2: 'assets/images/hospitals/hospital1.jpg',
                    hospitalname1: 'Hospital 1',
                    hospitalname2: 'Hospital2',
                  )),
              animated_button.AnimatedButton.strip(
                width: 300,
                height: 70,
                text: 'Helwan',
                isReverse: true,
                selectedTextColor: Colors.black,
                stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
                selectedBackgroundColor: Color.fromRGBO(16, 100, 92, 1.0),
                textStyle: GoogleFonts.nunito(
                    fontSize: 28,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
                onPress: () {
                  setState(() {
                    helwan = !helwan;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Visibility(
                  visible: helwan,
                  child: govrernment(
                    govername: 'helwan',
                    doctorName: '_',
                    doctoraddress: '_',
                    doctorrate: '_',
                    doctortime: '_',
                    doctorphoto: 'assets/images/pngs/dr1.png',
                    doctorName2: 'dr: eman mahmoud',
                    doctoraddress2: 'Luxor',
                    doctorrate2: '4.8',
                    doctortime2: '9 to 7',
                    doctorphoto2: 'assets/images/pngs/dr5.png',
                    hospital1: 'assets/images/hospitals/hospital1.jpg',
                    hospital2: 'assets/images/hospitals/hospital1.jpg',
                    hospitalname1: 'Hospital 1',
                    hospitalname2: 'Hospital2',
                  )),
              animated_button.AnimatedButton.strip(
                width: 300,
                height: 70,
                text: 'kafr elsheikh',
                isReverse: true,
                selectedTextColor: Colors.black,
                stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
                selectedBackgroundColor: Color.fromRGBO(16, 100, 92, 1.0),
                textStyle: GoogleFonts.nunito(
                    fontSize: 28,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
                onPress: () {
                  setState(() {
                    kafr = !kafr;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Visibility(
                  visible: kafr,
                  child: govrernment(
                    govername: 'kafr elshikh',
                    doctorName: '_',
                    doctoraddress: '_',
                    doctorrate: '_',
                    doctortime: '_',
                    doctorphoto: 'assets/images/pngs/dr1.png',
                    doctorName2: 'dr: eman mahmoud',
                    doctoraddress2: 'Luxor',
                    doctorrate2: '4.8',
                    doctortime2: '9 to 7',
                    doctorphoto2: 'assets/images/pngs/dr5.png',
                    hospital1: 'assets/images/hospitals/hospital1.jpg',
                    hospital2: 'assets/images/hospitals/hospital1.jpg',
                    hospitalname1: 'Hospital 1',
                    hospitalname2: 'Hospital2',
                  )),
              animated_button.AnimatedButton.strip(
                width: 300,
                height: 70,
                text: 'Monufia',
                isReverse: true,
                selectedTextColor: Colors.black,
                stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
                selectedBackgroundColor: Color.fromRGBO(16, 100, 92, 1.0),
                textStyle: GoogleFonts.nunito(
                    fontSize: 28,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
                onPress: () {
                  setState(() {
                    monufia = !monufia;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Visibility(
                  visible: monufia,
                  child: govrernment(
                    govername: 'Monufia',
                    doctorName: '_',
                    doctoraddress: '_',
                    doctorrate: '_',
                    doctortime: '_',
                    doctorphoto: 'assets/images/pngs/dr1.png',
                    doctorName2: 'dr: eman mahmoud',
                    doctoraddress2: 'Luxor',
                    doctorrate2: '4.8',
                    doctortime2: '9 to 7',
                    doctorphoto2: 'assets/images/pngs/dr5.png',
                    hospital1: 'assets/images/hospitals/hospital1.jpg',
                    hospital2: 'assets/images/hospitals/hospital1.jpg',
                    hospitalname1: 'Hospital 1',
                    hospitalname2: 'Hospital2',
                  )),
              animated_button.AnimatedButton.strip(
                width: 300,
                height: 70,
                text: 'Dakahlia',
                isReverse: true,
                selectedTextColor: Colors.black,
                stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
                selectedBackgroundColor: Color.fromRGBO(16, 100, 92, 1.0),
                textStyle: GoogleFonts.nunito(
                    fontSize: 28,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
                onPress: () {
                  setState(() {
                    dakahlia = !dakahlia;
                  });
                },
              ),
              Visibility(
                  visible: dakahlia,
                  child: govrernment(
                    govername: 'Dakahlia',
                    doctorName: '_',
                    doctoraddress: '_',
                    doctorrate: '_',
                    doctortime: '_',
                    doctorphoto: 'assets/images/pngs/dr1.png',
                    doctorName2: 'dr: eman mahmoud',
                    doctoraddress2: 'Luxor',
                    doctorrate2: '4.8',
                    doctortime2: '9 to 7',
                    doctorphoto2: 'assets/images/pngs/dr5.png',
                    hospital1: 'assets/images/hospitals/hospital1.jpg',
                    hospital2: 'assets/images/hospitals/hospital1.jpg',
                    hospitalname1: 'Hospital 1',
                    hospitalname2: 'Hospital2',
                  )),
              Container(
                width: mediaquery.width,
                height: mediaquery.width,
              )
            ],
          ),
        ),
      ),
    );
  }
}
