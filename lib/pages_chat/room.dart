import 'package:flutter/material.dart';
import 'package:test/components/user_title.dart';
import 'package:test/pages_chat/chat_page.dart';
import 'package:test/services/auth/auth_service_patient.dart';
import 'package:test/services/auth/chat/chat_service.dart';

class roomUser extends StatelessWidget {
  roomUser({Key? key}) : super(key: key);

  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 178, 164, 1.0),
      appBar: AppBar(
        title: const Text("Chat Room"),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: _buildUserList(),
    );
  }

  Widget _buildUserList() {
    return StreamBuilder<List<Map<String, dynamic>>>(
      stream: _chatService.getUsersStream(),
      builder: (context, snapshot) {
        // Check for error
        if (snapshot.hasError) {
          return const Text("Error");
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading...");
        }
        return ListView(
          children: snapshot.data!
              .map<Widget>((userData) => _buildUserListItem(userData, context))
              .toList(),
        );
      },
    );
  }

  Widget _buildUserListItem(
      Map<String, dynamic> userData, BuildContext context) {
    if (userData["email"] != _authService.getCurentUser()!.email) {
      return UserTile(
        text: userData["email"],
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatPage(
                receiverEmail: userData["email"],
                receiverID: userData["uid"],
              ),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }
}
