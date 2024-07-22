import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/settings.dart';
import 'package:test/spacer.dart';

class ChangePasswordScreenP extends StatefulWidget {
  const ChangePasswordScreenP({super.key});

  @override
  _ChangePasswordScreenPState createState() => _ChangePasswordScreenPState();
}

class _ChangePasswordScreenPState extends State<ChangePasswordScreenP> {
  final _formKey = GlobalKey<FormState>();
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String _errorMessage = '';

  Future<void> _changePassword() async {
    final String currentPassword = _currentPasswordController.text.trim();
    final String newPassword = _newPasswordController.text.trim();
    final String confirmPassword = _confirmPasswordController.text.trim();

    if (newPassword != confirmPassword) {
      setState(() {
        _errorMessage = 'Passwords do not match';
      });
      return;
    }

    try {
      final User? user = _auth.currentUser;
      final credential = EmailAuthProvider.credential(email: user!.email!, password: currentPassword);
      await user.reauthenticateWithCredential(credential);
      await user.updatePassword(newPassword);
      Fluttertoast.showToast(msg: 'Password changed successfully');
      Navigator.pop(context);
    } catch (error) {
      setState(() {
        _errorMessage = error.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:  Color.fromRGBO(32, 178, 164, 1.0),
      appBar: AppBar(
        backgroundColor:  Color.fromRGBO(32, 178, 164, 1.0),
        title: const Text('Change Password'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const settings()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromRGBO(31, 117, 109, 1.0),
                ),
                width: mediaquery.width/1.1,
                height: mediaquery.height/1.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Image.asset(
                        "assets/images/pngs/img.png",
                        height: 100,
                        width: 100,
                      ),
                    ),
                    AnimatedTextKit(
                      isRepeatingAnimation: true,
                      animatedTexts: [
                        ColorizeAnimatedText("change password",
                            textStyle: GoogleFonts.audiowide(
                                fontSize: 20.0, fontWeight: FontWeight.w600),
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
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextFormField(
                        controller: _currentPasswordController,
                        decoration: InputDecoration(labelText: 'Current Password',
                          labelStyle: TextStyle(
                            color: Colors.white
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color:Color.fromRGBO(25, 153, 141, 1.0),)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color:Color.fromRGBO(25, 153, 141, 1.0),
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(42, 148, 140, 1.0))),
        
                        ),
        
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your current password';
                          }
                          return null;
                        },
                      ),
                    ),
                    spacer(),
        
                    TextFormField(
                      controller: _newPasswordController,
                      decoration: InputDecoration(labelText: 'New Password',
                        labelStyle: TextStyle(
                            color: Colors.white
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color:Color.fromRGBO(25, 153, 141, 1.0),)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color:Color.fromRGBO(25, 153, 141, 1.0),
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(42, 148, 140, 1.0))),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a new password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: _confirmPasswordController,
                      decoration: InputDecoration(labelText: 'Confirm New Password',
                        labelStyle: TextStyle(
                            color: Colors.white
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color:Color.fromRGBO(25, 153, 141, 1.0),)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color:Color.fromRGBO(25, 153, 141, 1.0),
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(42, 148, 140, 1.0))),),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please confirm your new password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(Color.fromRGBO(25, 153, 141, 1.0)),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _changePassword();
                        }
                      },
                      child: const Text('Change Password',style: TextStyle(
                        color: Colors.white,
                      ),),
                    ),
                    if (_errorMessage.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          _errorMessage,
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
