import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class getWarningScreen extends StatefulWidget {

  static const String routeName = "getWarningScreen";

  const getWarningScreen({Key? key}) : super(key: key);

  @override
      State<getWarningScreen> createState() => _getWarningScreen();

}

class _getWarningScreen extends State<getWarningScreen> {
  List<QueryDocumentSnapshot> data = [];
  bool isLoading = true;

  getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection("Warnings").get();
    data.addAll(querySnapshot.docs);
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {

        getData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color.fromRGBO(201, 0, 0, 0.6),
  appBar: AppBar(
    backgroundColor: Color.fromRGBO(201, 0, 0, 0.7),
    title: const Text('WARNNING'),
    actions: const [],
  ),
  body:isLoading == true
  ?const Center(
    child: CircularProgressIndicator(),
  ) :
   GridView.builder(
    itemCount: data.length,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount:2 ,
      mainAxisExtent: 160,
    ),
    itemBuilder: (context, i) {
      return Card(
  child: Container(
    color: Color.fromRGBO(180, 6, 6, 0.9),
    padding: const EdgeInsets.all(10),
    child: IntrinsicHeight( 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color.fromRGBO(201, 0, 0, 1),
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "${data[i]["Warnings"]}",
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    ),
  ),
);


    },
  ),
);

  }
}