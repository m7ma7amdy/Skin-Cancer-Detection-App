import 'package:flutter/material.dart';

class spacer extends StatelessWidget {
  const spacer({super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5,),
        Container(
          width: 200,
          height: 4,
          color: const Color.fromRGBO(50, 150, 141, 1.0),
        ),
        const SizedBox(height: 5,),

      ],
    );
  }
}
