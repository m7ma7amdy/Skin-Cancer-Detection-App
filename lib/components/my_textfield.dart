import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final String label;
  final Color color;
  final Color textcolor;
  final TextEditingController controller;
  final FocusNode? focusNode;
  const MyTextField(
      {Key? key, required this.hintText, required this.obscureText, required this.controller, this.focusNode, required this.label, required this.color, required this.textcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical:0.0),
      child: SizedBox(
        height: 80,
        child: TextField(
          style: TextStyle(
            color: textcolor
          ),
          controller: controller,
          obscureText: obscureText,
          focusNode: focusNode,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  color:Color.fromRGBO(25, 153, 141, 1.0),)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            hintStyle: TextStyle(
              color: Colors.white
            ),
            labelText: label,labelStyle: TextStyle(color: color),
          ),
        ),
      ),
    );
  }
}
