import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test/doctor/add_advice_screen.dart';
import 'package:test/doctor/advices/custom_textfield_add.dart';
class addAdvice extends StatefulWidget {
  static const String routeName = "addAdvice";

  const addAdvice({super.key});

  @override
  State<addAdvice> createState() => _addAdviceState();
}

class _addAdviceState extends State<addAdvice> {
  final GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  CollectionReference Advices =
      FirebaseFirestore.instance.collection("Advices");
      bool isLoading = false;

  addAdvice() async {
    if (formState.currentState!.validate()) {
      try {
        isLoading = true;
        setState(() {
          
        });
        DocumentReference response = await Advices.add({
          'Advices': name.text,
          
        });
        isLoading = false;
       Navigator.push(context,
              MaterialPageRoute(builder: (context) => const addAdviceScreen()));
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
      backgroundColor:Color.fromRGBO(21, 112, 102, 1.0),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text("Add your advice")),
      body: Form(
        key: formState,
        child:isLoading ? const Center(child: CircularProgressIndicator(),):
         SingleChildScrollView(
           child: Column(
            children: [
              Image.asset("assets/images/pngs/Advicebad.png",height: mediaquery.height/2,width: mediaquery.width/1.3,),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child:
                      TextFormAdd(hintText: "Enter Advice", myController: name)),
              MaterialButton(
                height: 40,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: () {
                  addAdvice();
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
