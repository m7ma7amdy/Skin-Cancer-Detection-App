import 'package:flutter/material.dart';
import 'package:test/doctor/add_advice_screen.dart';
import 'package:test/doctor/add_warning_screen.dart';
import 'package:test/patient/common_advices.dart';

class roomAddAdviceWarningPatient extends StatefulWidget {
  static const String routeName = "roomAddAdviceWarningPatient";

  const roomAddAdviceWarningPatient({Key? key}) : super(key: key);

  @override
  State<roomAddAdviceWarningPatient> createState() => _roomAddAdviceWarningPatient();
}

class _roomAddAdviceWarningPatient extends State<roomAddAdviceWarningPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Room for Added'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const roomAddAdviceWarningP()),
            );
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const addAdviceScreen()),
                  );
                },
                child: const Text('Go to ِAdd ADVICE'),
              ),
            ),
          ),
          Container(
            color: Colors.red,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const addWarningScreen()),
                  );
                },
                child: const Text('Go to Add WARNING'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

