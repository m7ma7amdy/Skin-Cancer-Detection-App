  import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';
 

class governButton extends StatefulWidget {
  const governButton({super.key});

  @override
  State<governButton> createState() => _governButtonState();
}

class _governButtonState extends State<governButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedButton.strip(
        width: 200,
        height: 70,
        text: 'SUBMIT',
        isReverse: true,
        selectedTextColor: Colors.black,
        stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
        selectedBackgroundColor: Colors.white,
        textStyle: GoogleFonts.nunito(
            fontSize: 28,
            letterSpacing: 5,
            color: Colors.white,
            fontWeight: FontWeight.w300), onPress: () {},
      ),
    );
    
  }
}
