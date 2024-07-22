import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test/components/chat_bubble.dart';
import 'package:test/components/my_textfield.dart';
import 'package:test/services/auth/auth_service_patient.dart';
import 'package:test/services/auth/chat/chat_service.dart';

class ChatPage extends StatefulWidget {
  final String receiverEmail;
  final String receiverID;

  const ChatPage({
    Key? key,
    required this.receiverEmail,
    required this.receiverID,
  }) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messageController = TextEditingController();

  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();


  FocusNode myFocusNode = FocusNode();

@override
void initState() {
  super.initState();
  myFocusNode.addListener(() {
    if(myFocusNode.hasFocus){
    Future.delayed(
      const Duration(milliseconds: 500),
      () => scrollDown(),
    );
    }
  });
  Future.delayed(
  const Duration(milliseconds: 500),
  ()=> scrollDown(),
);
}

@override
void dispose() {
  myFocusNode.dispose();
  _messageController.dispose();
  super.dispose();
}
final ScrollController _scrollController = ScrollController();
void scrollDown(){
  _scrollController.animateTo(
    _scrollController.position.maxScrollExtent,
     duration:const  Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,);
}

void sendMessage() async {
  if (_messageController.text.isNotEmpty) {
    await _chatService.sendMessage(widget.receiverID, _messageController.text);
    _messageController.clear();
  }
  scrollDown();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(32, 178, 164, 1.0),
      appBar: AppBar(
        toolbarHeight: 50,
        title: Text(widget.receiverEmail),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/pngs/chatbackground.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
          children: [
            Expanded(
              child: _buildMessageList(),
            ),
            _buildUserInput(),
          ],
        ),]
      ),
    );
  }

  Widget _buildMessageList() {
    String senderID = _authService.getCurentUser()!.uid;

    return StreamBuilder(
      stream: _chatService.getMessages(widget.receiverID, senderID),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text("Error");
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading...");
        }
        return ListView(
          controller:  _scrollController,
          children:
              snapshot.data!.docs.map((doc) => _buildMessageItem(doc)).toList(),
        );
      },
    );
  }

  Widget _buildMessageItem(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    bool isCurrentUser = data["senderID"] == _authService.getCurentUser()!.uid;

    var alignment =
        isCurrentUser ? Alignment.centerRight : Alignment.centerLeft;

    return Container(
        alignment: alignment,
        child: Column(
          crossAxisAlignment:
              isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            ChatBubble(
              message: data["message"],
              isCurrentUser: isCurrentUser,
            )
          ],
        ));
  }

  Widget _buildUserInput() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Expanded(
            child: MyTextField(
              controller: _messageController,
              hintText: "Type a message",
              obscureText: false,
              focusNode: myFocusNode, label: 'Enter your message', color: Colors.white, textcolor: Colors.white,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color:  Color.fromRGBO(22, 125, 116, 1.0),
              shape: BoxShape.circle,
            ),
            margin: const EdgeInsets.only(right: 25),
            child: IconButton(
              onPressed: sendMessage,
              icon: const Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
