import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test/doctor/add_warning_screen.dart';
import 'package:test/doctor/advices/custom_textfield_add.dart';
class addWarning extends StatefulWidget {
  static const String routeName = "addWarning";

  const addWarning({super.key});

  @override
  State<addWarning> createState() => _addWarning();
}

class _addWarning extends State<addWarning> {
  final GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  CollectionReference Advices =
      FirebaseFirestore.instance.collection("Warnings");
      bool isLoading = false;

  addWarning() async {
    if (formState.currentState!.validate()) {
      try {
        isLoading = true;
        setState(() {
          
        });
        DocumentReference response = await Advices.add({
          'Warnings': name.text,
          
        });
        isLoading = false;
         Navigator.push(context,
              MaterialPageRoute(builder: (context) => const addWarningScreen()));
      } catch (e) {
        isLoading=false;
        setState(() {
          
        });
        print("Error $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(166, 46, 36, 1.0),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(166, 46, 36, 1.0),
          title: const Text("Add your warning")),
      body: Form(
        key: formState,
        child:isLoading ? const Center(child: CircularProgressIndicator(),):
         SingleChildScrollView(
           child: Column(
            children: [
              Image.asset("assets/images/pngs/warnningbad.png",height: mediaquery.height/2,width: mediaquery.width/1.3,),
           
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child:
                      TextFormAdd(hintText: "Enter Warning", myController: name)),
              MaterialButton(
                height: 40,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Color.fromRGBO(117, 31, 25, 1.0),
                textColor: Colors.white,
                onPressed: () {
                  addWarning();
                },
                child: const Text("Add"),
              )
              // Add your form fields here
            ],
                   ),
         ),
      ),
    );
  }
}
