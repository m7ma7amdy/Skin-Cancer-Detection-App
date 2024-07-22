import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test/login.dart';

import '../spacer.dart';

class doctorForgetPassword extends StatefulWidget {
  const doctorForgetPassword({super.key});

  @override
  State<doctorForgetPassword> createState() => _patientForgetPasswordState();
}

class _patientForgetPasswordState extends State<doctorForgetPassword> {
    TextEditingController email = TextEditingController();

  bool EmailIsVisible = false;
  bool NumberIsVisible = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;



  Future<void> _resetPassword() async {
  try {
    await _auth.sendPasswordResetEmail(email: email.text);
    // Password reset email sent!
    // You can navigate to a success screen or show a confirmation message here.
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Password reset email sent!'),
      ),
    );
  } catch (error) {
throw Exception(error.toString());    
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              
              "Forget Your Passoword?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const spacer(),
            const Text(
              "Enter your email or your phone number, we will send you confirmation code?",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        width: 2, color: const Color.fromRGBO(50, 149, 140, 1.0))),
                width: 350,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          EmailIsVisible = !EmailIsVisible;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(50, 149, 140, 1.0),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                width: 2,
                                color: const Color.fromRGBO(50, 149, 140, 1.0))),
                        width: 120,
                        height: 40,
                        child: const Center(
                          child: Text(
                            "Email",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        
                        setState(() {
                          NumberIsVisible = !NumberIsVisible;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(50, 149, 140, 1.0),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                width: 2,
                                color: const Color.fromRGBO(50, 149, 140, 1.0))),
                        width: 120,
                        height: 40,
                        child: const Center(
                          child: Text(
                            "Number",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Visibility(
              visible: EmailIsVisible,
              child: TextField(
                controller: email,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  labelText: "Enter your Email",
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Visibility(
              visible: NumberIsVisible,
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  labelText: "Enter your Number",
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _resetPassword();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const login()));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromRGBO(50, 149, 140, 1.0),
                    ),
                    child: const Center(
                      child: Text(
                        "Reset Password",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
