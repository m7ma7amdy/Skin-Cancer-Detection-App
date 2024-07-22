import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:developer' as devtools;

class scan2 extends StatefulWidget {
  const scan2 ({super.key});

  @override
  State<scan2> createState() => _scan2State();
}

class _scan2State extends State<scan2> {
  File? filePath;
  String label = '';
  double confidence = 0.0;

  Future<void> _tfLteInit() async {
    String? res = await Tflite.loadModel(
        model: "assets/model/model3.tflite",
        labels: "assets/model/labels3.txt",
        numThreads: 1, // defaults to 1
        isAsset:
        true, // defaults to true, set to false to load resources outside assets
        useGpuDelegate:
        false // defaults to false, set to true to use GPU delegate
    );
  }

  pickImageGallery() async {
    final ImagePicker picker = ImagePicker();
// Pick an image.
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image == null) return;

    var imageMap = File(image.path);

    setState(() {
      filePath = imageMap;
    });

    var recognitions = await Tflite.runModelOnImage(
        path: image.path, // required
        imageMean: 0.0, // defaults to 117.0
        imageStd: 255.0, // defaults to 1.0
        numResults: 2, // defaults to 5
        threshold: 0.2, // defaults to 0.1
        asynch: true // defaults to true
    );

    if (recognitions == null) {
      devtools.log("recognitions is Null");
      return;
    }
    devtools.log(recognitions.toString());
    setState(() {
      confidence = (recognitions[0]['confidence'] * 100);
      label = recognitions[0]['label'].toString();
    });
  }

  pickImageCamera() async {
    final ImagePicker picker = ImagePicker();
// Pick an image.
    final XFile? image = await picker.pickImage(source: ImageSource.camera);

    if (image == null) return;

    var imageMap = File(image.path);

    setState(() {
      filePath = imageMap;
    });

    var recognitions = await Tflite.runModelOnImage(
        path: image.path, // required
        imageMean: 0.0, // defaults to 117.0
        imageStd: 255.0, // defaults to 1.0
        numResults: 2, // defaults to 5
        threshold: 0.2, // defaults to 0.1
        asynch: true // defaults to true
    );

    if (recognitions == null) {
      devtools.log("recognitions is Null");
      return;
    }
    devtools.log(recognitions.toString());
    setState(() {
      confidence = (recognitions[0]['confidence'] * 100);
      label = recognitions[0]['label'].toString();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    Tflite.close();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tfLteInit();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      backgroundColor: Color.fromRGBO(25, 152, 140, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(25, 152, 140, 1.0),
        title: const Text("skin cancer Detection"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Card(

                elevation: 20,
                clipBehavior: Clip.hardEdge,
                child: SizedBox(
                  width: 300,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 18,
                        ),
                        Container(
                          height: 280,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(25, 152, 140, 1.0),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: filePath == null
                              ? const Text('')
                              : Image.file(
                            filePath!,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                label,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                "The Accuracy is ${confidence.toStringAsFixed(0)}%",
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
          AnimatedButton.strip(
                  backgroundColor: Color.fromRGBO(29, 164, 152, 1.0),
                  width: size.width / 2.1,
                  height: 50,
                  text: 'Capture',
                  isReverse: true,
                  selectedTextColor: Colors.black,
                  stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
                  selectedBackgroundColor:
                  Color.fromRGBO(22, 126, 119, 1.0),
                  textStyle: GoogleFonts.nunito(
                      fontSize: 28,
                      letterSpacing: 5,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                  onPress: () {
                    setState(() {
                      pickImageCamera();
                    });
                  },
                ),
              const SizedBox(
                height: 8,
              ),
              AnimatedButton.strip(
                backgroundColor: Color.fromRGBO(29, 164, 152, 1.0),
                width: size.width / 2.1,
                height: 50,
                text: 'upload',
                isReverse: true,
                selectedTextColor: Colors.black,
                stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
                selectedBackgroundColor:
                Color.fromRGBO(22, 126, 119, 1.0),
                textStyle: GoogleFonts.nunito(
                    fontSize: 28,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
                onPress: () {
                  setState(() {
                    pickImageGallery();
                  });
                },
              ),
              const SizedBox(
                height: 8,
              ),
              AnimatedButton.strip(
                backgroundColor: Color.fromRGBO(29, 164, 152, 1.0),
                width: size.width / 2.1,
                height: 50,
                text: 'Delete',
                isReverse: true,
                selectedTextColor: Colors.black,
                stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
                selectedBackgroundColor:
                Color.fromRGBO(22, 126, 119, 1.0),
                textStyle: GoogleFonts.nunito(
                    fontSize: 28,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
                onPress: () {
                  setState(() {
                  filePath=null;
                  label="";
                  confidence=0;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
