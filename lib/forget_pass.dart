import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:test/login.dart';

class forgetPassword extends StatefulWidget {
  const forgetPassword({Key? key}) : super(key: key);

  @override
  State<forgetPassword> createState() => _forgetPasswordState();
}

class _forgetPasswordState extends State<forgetPassword> {
  TextEditingController email = TextEditingController();
  bool emailIsVisible = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _resetPassword() async {
    try {
      await _auth.sendPasswordResetEmail(email: email.text);
      // عرض AlertDialog بدلاً من SnackBar
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Password Reset Email Sent'),
            content: const Text('Check your inbox for password reset instructions!'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  // توجيه المستخدم إلى صفحة تسجيل الدخول بعد إرسال رسالة إعادة تعيين كلمة المرور بنجاح
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const login()),
                  );
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
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
              "Forget Your Password?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            const Text(
              "Enter your email, we will send you a password reset link",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: email,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                labelText: "Enter your Email",
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: _resetPassword,
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
