import 'package:flutter/material.dart';
import 'package:test/pages_chat/login_page.dart';
import 'package:test/services/auth/auth_service_patient.dart';
import 'package:test/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  // Tap to go to the register page
  final void Function()? onTap;

  RegisterPage({Key? key, required this.onTap}) : super(key: key);

  void register(BuildContext context) async {
  // Get auth service
  final auth = AuthService();
  if (_pwController.text == _confirmPwController.text) {
    try {
      await auth.signUpWithEmailAndPassword(
        _emailController.text,
        _pwController.text,
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  } else {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text("Passwords don't match!"),
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text("Sign up", style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        )),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Icon(
            //   Icons.message,
            //   size: 60,
            //   color: Theme.of(context).colorScheme.primary,
            // ),
            // const SizedBox(height: 50),
            // Text(
            //   "Let's create an account for you",
            //   style: TextStyle(
            //     color: Theme.of(context).colorScheme.primary,
            //     fontSize: 16,
            //   ),
            // ),
            const SizedBox(height: 20),
            MyTextField(
              hintText: "Email",
              obscureText: false,
              controller: _emailController, label: 'Enter your Email', color: Color.fromRGBO(25, 153, 141, 1.0), textcolor: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: _pwController, label: 'Enter your Password', color: Color.fromRGBO(25, 153, 141, 1.0), textcolor: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
              
              hintText: "Confirm Password",
              obscureText: true,
              controller: _confirmPwController, label: 'confirm password', color: Color.fromRGBO(25, 153, 141, 1.0), textcolor: Colors.black,
            ),
            const SizedBox(height: 0),
            GestureDetector(
              onTap: ()=> register(context) ,
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                    child: Center(
                      child: Text("Sign up", style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(50, 149, 140, 1.0),
                    )
                ),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>  LoginPage(onTap: () {  },)));
                                },
                  child: Text(
                    "Login now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(50, 149, 140, 1.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
