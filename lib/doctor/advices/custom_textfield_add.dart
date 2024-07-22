import 'package:flutter/material.dart';

class TextFormAdd extends StatelessWidget {
  final String hintText;
  final TextEditingController myController;
  final String? Function(String?)? validator;

  const TextFormAdd({
    Key? key,
    required this.hintText,
    required this.myController,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      child: TextFormField(
        controller: myController,
        decoration: InputDecoration(
          hintText: hintText,
          fillColor: Colors.grey[200],
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Color.fromARGB(255, 184, 184, 184)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Colors.red[700]!),
          ),
        ),
        validator: validator,
      ),
    );
  }
}