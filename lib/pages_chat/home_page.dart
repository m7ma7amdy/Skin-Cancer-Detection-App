import 'package:flutter/material.dart';
import 'package:test/patient/home.dart';
import 'package:test/services/auth/chat/chat_service.dart';
import '../services/auth/auth_service_patient.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate loading for 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const patientHome()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading ? _buildLoadingScreen() : Container();
  }

  Widget _buildLoadingScreen() {
  return const Scaffold(
    backgroundColor: Color.fromRGBO(50, 149, 140, 1.0), // خلفية حمراء
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome!",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          // CircularProgressIndicator(), // قم بتعليق هذا السطر أو إزالته
        ],
      ),
    ),
  );
}

}
