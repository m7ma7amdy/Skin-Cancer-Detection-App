import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test/doctor/home_page_doctor.dart';
import 'package:test/services/auth/login_or_register.dart';

class AuthGateDoctor extends StatelessWidget {
  const AuthGateDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user is logged in
          if (snapshot.hasData) {
            return  const homePageDoctor();
          }
          // user is NOT logged in
          else {
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
