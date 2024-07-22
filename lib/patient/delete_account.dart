import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/login.dart';
import 'package:test/spacer.dart';


class DeleteAccountScreenP extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

   DeleteAccountScreenP({super.key});

  Future<void> _deleteAccount(BuildContext context) async {
    try {
      // حذف حساب المستخدم الحالي
      await _auth.currentUser!.delete();
      // عرض رسالة تأكيد الحذف
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("done"),
            content: const Text("deletedSuccessfully"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const login()),
                          );
                },
                child: const Text("ok"),
              ),
            ],
          );
        },
      );
    } catch (error) {
      // عرض رسالة الخطأ في حالة فشل الحذف
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("error"),
            content: Text("there was an error $error"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
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
      backgroundColor: Color.fromRGBO(32, 178, 164, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 178, 164, 1.0),
        title: const Text("Delete Account"),
      ),
      body: Center(
        child: Column(
          children: [
             Container(
              width: mediaquery.width/1.1,
              height: mediaquery.height/1.3,
              color: Color.fromRGBO(22, 121, 114, 1.0),
              child:Column(
                children: [
                  Image.asset("assets/images/pngs/Advicebad.png",height: mediaquery.height/2,width: mediaquery.width/1.3,),
                  spacer(),
                  Center(
                    child: AnimatedTextKit(
                      isRepeatingAnimation: true,
                      animatedTexts: [
                        ColorizeAnimatedText("Thank you for being part of this journey \n You will now delete your account from the application.\nIf you are sure , click on the button below",
                            textAlign: TextAlign.center,
                            textStyle: GoogleFonts.audiowide(
                                fontSize: 13.0, fontWeight: FontWeight.w600),
                            colors: <Color>[
                              Colors.white,
                              Color.fromRGBO(252, 117, 167, 1.0),
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
                  spacer(),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                          Color.fromRGBO(32, 177, 163, 1.0)),
                    ),
                    onPressed: () => _deleteAccount(context),
                    child: const Text("Delete Account",style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),),
                  ),

                ],
              ),
            ),
           ],
        ),
      ),
    );
  }
}
