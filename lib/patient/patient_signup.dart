import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test/patient/home.dart';
import 'package:test/spacer.dart';


class patientSignUp extends StatefulWidget {
  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  patientSignUp({super.key});

  @override
  State<patientSignUp> createState() => _patientSignUpState();
}

bool visublepass = true;

class _patientSignUpState extends State<patientSignUp> {
  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
        title: const Text("Sign up",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 30, left: 20.0, right: 20.0),
                child: TextFormField(
                  controller: userName,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your username";
                    }
                    if (value.length > 15) {
                      return "Name should be less than 15 characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(25, 153, 141, 1.0),
                        )),
                    prefixIcon: const Icon(Icons.nest_cam_wired_stand),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    labelText: "Enter username",
                    labelStyle:
                        const TextStyle(color: Color.fromRGBO(25, 153, 141, 1.0)),
                  ),
                ),
              ),
            ),
            Form(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 30, left: 20.0, right: 20.0),
                child: TextFormField(
                  controller: email,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) => val!.isEmpty || !val.contains("@")
                      ? "enter a valid Email"
                      : null,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(25, 153, 141, 1.0),
                        )),
                    prefixIcon: const Icon(Icons.email),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    labelText: "Enter your Email",
                    labelStyle:
                        const TextStyle(color: Color.fromRGBO(25, 153, 141, 1.0)),
                  ),
                ),
              ),
            ),
            Form(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 30, left: 20.0, right: 20.0),
                child: TextFormField(
                  controller: password,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: visublepass,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your password";
                    }
                    if (value.length < 8) {
                      return "password should be more than 8 characters";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(25, 153, 141, 1.0),
                        )),
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            visublepass = true;
                          });
                        },
                        child: const Icon(Icons.remove_red_eye)),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    labelText: "Enter your Password",
                    labelStyle:
                        const TextStyle(color: Color.fromRGBO(25, 153, 141, 1.0)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const spacer(),
            const spacer(),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () async {
                try {
                  final credential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                    email: email.text,
                    password: password.text,
                  );
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const patientHome()));
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    print('The password provided is too weak.');
                  } else if (e.code == 'email-already-in-use') {
                    print('The account already exists for that email.');
                  }
                } catch (e) {
                  print(e);
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromRGBO(50, 149, 140, 1.0),
                    ),
                    child: const Center(
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "already have an account?",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const patientHome()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Color.fromRGBO(25, 153, 141, 1.0),
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  add_radio_button(int btnValue, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          activeColor: Colors.green,
          value: btnValue,
          groupValue: -1,
          onChanged: (int? value) {},
        ),
        Text(title)
      ],
    );
  }
}
