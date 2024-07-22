import 'package:flutter/material.dart';

class spacer2 extends StatelessWidget {
  const spacer2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          width: 5,
          height: 180,
          color: const Color.fromRGBO(50, 150, 141, 1.0),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
