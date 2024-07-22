// import 'dart:io';
// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_animated_button/flutter_animated_button.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:tflite/tflite.dart';
// import 'package:image/image.dart' as img;
//
//
// class scanUpload extends StatefulWidget {
//   const scanUpload({Key? key}) : super(key: key);
//
//   @override
//   State<scanUpload> createState() => _scanUploadState();
// }
//
// class _scanUploadState extends State<scanUpload> {
//   File? image;
//   List? _outputs;
//   bool _loading = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _loading = true;
//
//     loadModel().then((value) {
//       setState(() {
//         _loading = false;
//       });
//     });
//   }
//
//   final imagepicker = ImagePicker();
//
//   Future<void> uploadImage() async {
//     var pickedImage =
//     await imagepicker.pickImage(source: ImageSource.gallery);
//     if (pickedImage != null) {
//       setState(() {
//         _loading = true;
//         image = File(pickedImage.path);
//       });
//     } else {
//       return;
//     }
//     classifyImage(image!);
//   }
//
//   Future<void> takeImage() async {
//     var pickedImage =
//     await imagepicker.pickImage(source: ImageSource.camera);
//     if (pickedImage != null) {
//       setState(() {
//         _loading = true;
//         image = File(pickedImage.path);
//       });
//     } else {
//       return;
//     }
//     classifyImage(image!);
//   }
//
//   Future<void> classifyImage(File imageFile) async {
//     // Read image as bytes
//     Uint8List imageBytes = await imageFile.readAsBytes();
//
//     // Decode image using the image package
//     img.Image inputImage = img.decodeImage(imageBytes)!;
//
//     // Process the image
//     img.Image processedImage = processImage(inputImage);
//
//     // Save the processed image to a temporary file
//     File tempFile = await saveTempImage(processedImage);
//
//     // Run classification on the processed image
//     var output = await Tflite.runModelOnImage(
//       path: tempFile.path,
//       numResults: 2,
//       threshold: 0.3,
//       imageMean: 127.5,
//       imageStd: 127.5,
//     );
//
//     // Update state with the classification results
//     setState(() {
//       _loading = false;
//       _outputs = output!;
//     });
//   }
//
//   img.Image processImage(img.Image inputImage) {
//     // Resize the image
//     final resizedImage = img.copyResize(inputImage, width: 224, height: 224);
//
//     // Convert to grayscale
//     // final grayscaleImage = img.grayscale(resizedImage);
//
//     // Apply Gaussian blur
//     // final blurredImage = img.gaussianBlur(grayscaleImage, radius: 5);
//
//     // Apply thresholding
//     return resizedImage;
//   }
//
//   Future<File> saveTempImage(img.Image image) async {
//     Directory tempDir = await getTemporaryDirectory();
//     String tempPath = tempDir.path;
//     File tempFile = File('$tempPath/temp_image.png');
//     await tempFile.writeAsBytes(img.encodePng(image));
//     return tempFile;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(32, 178, 164, 1.0),
//       body: _loading
//           ? Center(
//         child: CircularProgressIndicator(),
//       )
//           : SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               width: double.infinity,
//             ),
//             Container(
//               child: image == null
//                   ? Text(
//                 "Please upload an image",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'Poppins',
//                 ),
//               )
//                   : Image.file(
//                 image!,
//                 height: 200,
//                 width: 400,
//               ),
//               height: size.height / 2.5,
//               width: size.width / 1.2,
//               decoration: BoxDecoration(
//                   border: Border.all(
//                       color: Color.fromRGBO(19, 110, 102, 1.0),
//                       width: 2)),
//             ),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 AnimatedButton.strip(
//                   backgroundColor: Color.fromRGBO(29, 164, 152, 1.0),
//                   width: size.width / 2.1,
//                   height: 50,
//                   text: 'Capture',
//                   isReverse: true,
//                   selectedTextColor: Colors.black,
//                   stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
//                   selectedBackgroundColor:
//                   Color.fromRGBO(22, 126, 119, 1.0),
//                   textStyle: GoogleFonts.nunito(
//                       fontSize: 28,
//                       letterSpacing: 5,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w300),
//                   onPress: () {
//                     setState(() {
//                       takeImage();
//                     });
//                   },
//                 ),
//                 AnimatedButton.strip(
//                   backgroundColor: Color.fromRGBO(29, 164, 152, 1.0),
//                   width: size.width / 2.1,
//                   height: 50,
//                   text: 'Upload',
//                   isReverse: true,
//                   selectedTextColor: Colors.black,
//                   stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
//                   selectedBackgroundColor:
//                   Color.fromRGBO(22, 126, 119, 1.0),
//                   textStyle: GoogleFonts.nunito(
//                       fontSize: 28,
//                       letterSpacing: 5,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w300),
//                   onPress: () {
//                     setState(() {
//                       uploadImage();
//                     });
//                   },
//                 ),
//               ],
//             ),
//             SizedBox(height: 10),
//             AnimatedButton.strip(
//               backgroundColor: Color.fromRGBO(29, 164, 152, 1.0),
//               width: size.width / 2.1,
//               height: 50,
//               text: 'Delete',
//               isReverse: true,
//               selectedTextColor: Colors.black,
//               stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
//               selectedBackgroundColor:
//               Color.fromRGBO(22, 126, 119, 1.0),
//               textStyle: GoogleFonts.nunito(
//                   fontSize: 28,
//                   letterSpacing: 5,
//                   color: Colors.white,
//                   fontWeight: FontWeight.w300),
//               onPress: () {
//                 setState(() {
//                   image = null;
//                 });
//               },
//             ),
//             SizedBox(height: 10),
//             AnimatedButton(
//               selectedBackgroundColor: Color.fromRGBO(22, 125, 118, 1.0),
//               height: 60,
//               width: size.width / 1.2,
//               text: 'Scan Now',
//               isReverse: true,
//               selectedTextColor: Colors.black,
//               transitionType: TransitionType.LEFT_TO_RIGHT,
//               backgroundColor: Color.fromRGBO(29, 164, 152, 1.0),
//               borderColor: Color.fromRGBO(22, 126, 119, 1.0),
//               borderRadius: 50,
//               borderWidth: 2,
//               onPress: () {},
//             ),
//             SizedBox(height: 20),
//             Container(
//               width: size.width,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   image == null
//                       ? Container()
//                       : ClipRRect(
//                     borderRadius: BorderRadius.circular(50),
//                     child: Image.file(image!),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   _outputs != null
//                       ? Padding(
//                     padding: EdgeInsets.all(0.8),
//                     child: Container(
//                       padding: EdgeInsets.all(0.8),
//                       child: Text(
//                         "Result is ${_outputs![0]["label"]}",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 40,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   )
//                       : Container(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Future<void> loadModel() async {
//     await Tflite.loadModel(
//       model: "assets/model/model3.tflite",
//       labels: "assets/model/labels3.txt",
//     );
//   }
//
//   @override
//   void dispose() {
//     Tflite.close();
//     super.dispose();
//   }
// }
