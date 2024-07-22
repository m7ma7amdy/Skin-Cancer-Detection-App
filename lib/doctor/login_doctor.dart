import 'package:flutter/material.dart';
import 'package:test/doctor/auth_service_doctor.dart';
import 'package:test/pages_chat/register_page.dart';
import 'package:test/components/my_button.dart';
import 'package:test/components/my_textfield.dart';

class LoginPageDoctor extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final void Function()? onTap;

  LoginPageDoctor({Key? key, required this.onTap}) : super(key: key);

  void loginDoctor(BuildContext context) async {
    // Auth service
    final authServiceDoctor = AuthServiceDoctor();

    // Try login
    try {
      await authServiceDoctor.signInWithEmailPassword(
        _emailController.text,
        _pwController.text,
      );
    } catch (e) {
      // Catch any errors
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 50),
            Text(
              "Welcome back, you've been missed!",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 25),
            MyTextField(
              hintText: "Email",
              obscureText: false,
              controller: _emailController, label: '', color: Colors.black, textcolor: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: _pwController, label: '', color: Colors.black, textcolor: Colors.black,
            ),
            const SizedBox(height: 25),
            MyButton(
              text: "Login",
              onTap: ()
              => loginDoctor(context),


              
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member? ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ), // Text
                GestureDetector(
                  onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>  RegisterPage(onTap: () {  },)));
                                },
                  child: Text(
                    "Register now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ), // Text
                ), // GestureDetector
              ],
            ),
          ],
        ),
      ),
    );
  }
}
