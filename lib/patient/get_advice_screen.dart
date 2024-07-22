import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class getAdviceScreen extends StatefulWidget {

  static const String routeName = "getAdviceScreen";

  const getAdviceScreen({Key? key}) : super(key: key);

  @override
      State<getAdviceScreen> createState() => _getAdviceScreen();

}

class _getAdviceScreen extends State<getAdviceScreen> {
  List<QueryDocumentSnapshot> data = [];
  bool isLoading = true;

  getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection("Advices").get();
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
      backgroundColor: Color.fromRGBO(45, 161, 151, 1.0),
  appBar: AppBar(
    backgroundColor: Color.fromRGBO(45, 161, 151, 1.0),
    elevation: 0.0,
    title: const Text('ADVICE'),
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
    color: Color.fromRGBO(30, 117, 110, 1.0),
    padding: const EdgeInsets.all(10),
    child: IntrinsicHeight( 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color.fromRGBO(45, 161, 151, 1.0),
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),

            //i removed the expaended becouse of an error
            child: Text(
              "${data[i]["Advices"]}",
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