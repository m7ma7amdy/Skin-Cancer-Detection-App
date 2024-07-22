import 'package:flutter/material.dart';
import 'package:test/forget_pass.dart';
import 'package:test/pages_chat/register_page.dart';
import 'package:test/services/auth/auth_service_patient.dart';
import 'package:test/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final void Function()? onTap;

  LoginPage({Key? key, required this.onTap}) : super(key: key);

  void login(BuildContext context) async {
    // Auth service
    final authService = AuthService();

    // Try login
    try {
      await authService.signInWithEmailPassword(
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
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text("Login", style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        )),
        centerTitle: true,
      ),
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
            //   "Welcome back, you've been missed!",
            //   style: TextStyle(
            //     color: Theme.of(context).colorScheme.primary,
            //     fontSize: 16,
            //   ),
            // ),
            SizedBox(height: 40,),
             MyTextField(
              hintText: "Email",
              obscureText: false,
              controller: _emailController, label: 'Enter your email', color: Colors.black, textcolor: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: _pwController, label: 'Enter your Password', color: Colors.black, textcolor: Colors.black,
            ),
            const SizedBox(height: 0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const forgetPassword()),
                );
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 0, left: 200),
                child: Text(
                  "forget your password?",
                  style: TextStyle(
                    color: Color.fromRGBO(25, 153, 141, 1.0),
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: ()
                => login(context),
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                    child: Center(
                      child: Text("Login", style: TextStyle(
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

            // MyButton(
            //   text: "Login",
            //   onTap: ()
            //   => login(context),
            //
            //   // {
            //   //   Navigator.push(context,
            //   //         MaterialPageRoute(builder: (context) => SettingsPage()));
            //   // },
            // ),
            // const SizedBox(height: 25),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member? ",
                  style: TextStyle(
                    color: Colors.grey,
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
                      color: Color.fromRGBO(50, 149, 140, 1.0),
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
