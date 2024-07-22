import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrentUser;

  const ChatBubble({
    Key? key,
    required this.message,
    required this.isCurrentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isCurrentUser ? Color.fromRGBO(22, 125, 116, 1.0) :
        Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 2.5,horizontal: 25),
      child: Text(
        message,
        style: const TextStyle(color: Colors.black),
        ),
      );
  }
}
