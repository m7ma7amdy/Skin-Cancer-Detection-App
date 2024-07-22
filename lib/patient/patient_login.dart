import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test/patient/patient_forget_password.dart';
import 'package:test/patient/patient_signup.dart';

class patientLogin extends StatelessWidget {
      static const String routeName = "patient_login";

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
   patientLogin({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
        title: const Text("Login", style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        )),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20.0, right: 20.0),
            child: Form(
              child: TextFormField(
                controller: email,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) =>
                val!.isEmpty || !val.contains("@")
                    ? "enter a valid Email"
                    : null,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      color:Color.fromRGBO(25, 153, 141, 1.0),)),
                  prefixIcon: const Icon(Icons.email),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  labelText: "Enter your Email",labelStyle: const TextStyle(color: Colors.black),
                ),
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20.0, right: 20.0),
            child: Form(
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
                        color:Color.fromRGBO(25, 153, 141, 1.0),)),

                  prefixIcon: const Icon(Icons.password),
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  labelText: "Enter your Password",labelStyle: const TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const patientForgetPassword()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 5.0, left: 200),
              child: Text("forget your password?", style: TextStyle(
                color: Color.fromRGBO(25, 153, 141, 1.0),
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),),
            ),
          ),
          GestureDetector(
            onTap: () async {
              try {
                final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: email.text,
                    password: password.text,
                );
                Navigator.pushNamed(context,'patientHome',arguments: email.text);             
                        } on FirebaseAuthException catch (e) {
                if (e.code == 'user-not-found') {
                  print('No user found for that email.');
                } else if (e.code == 'wrong-password') {
                  print('Wrong password provided for that user.');
                }
              }
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
                    child: Text("Login", style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                  )
              ),
            ),
          ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("dont have an account?", style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => patientSignUp()));
                },
                child: const Padding(
                  padding: EdgeInsets.only(),
                  child: Text(" Sign UP?", style: TextStyle(
                    color: Color.fromRGBO(25, 153, 141, 1.0),
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),),
                ),
              ),

            ],
          )

        ],
      ),
    );
  }
}
