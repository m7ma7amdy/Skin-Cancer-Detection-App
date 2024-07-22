import 'package:flutter/material.dart';
import 'package:test/doctor/auth_service_doctor.dart';
import 'package:test/doctor/home_doctor.dart';
import 'package:test/services/auth/chat/chat_service.dart';

class homePageDoctor extends StatefulWidget {
  const homePageDoctor({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<homePageDoctor> {
  final ChatService _chatService = ChatService();
  final AuthServiceDoctor _authService = AuthServiceDoctor();
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const doctorHome()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading ? _buildLoadingScreen() : Container();
  }

  Widget _buildLoadingScreen() {
  return const Scaffold(
    backgroundColor: Color.fromRGBO(50, 149, 140, 1.0),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome Doctor!",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    ),
  );
}

}
