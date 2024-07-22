import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test/doctor/advices/add_warning.dart';
import 'package:test/doctor/room_add_advice_warning.dart';

class addWarningScreen extends StatefulWidget {
  static const String routeName = "addWarningScreen";

  const addWarningScreen({Key? key}) : super(key: key);

  @override
  State<addWarningScreen> createState() => _addWarningScreen();
}

class _addWarningScreen extends State<addWarningScreen> {
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
      backgroundColor: Color.fromRGBO(155, 45, 37, 1.0),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
           Navigator.push(context,
              MaterialPageRoute(builder: (context) => const addWarning()));
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('ADD Warning'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const roomAddAdviceWarning()),
            );
          },
        ),
      ),
      body: isLoading == true
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : GridView.builder(
              itemCount: data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 160,
              ),
              itemBuilder: (context, i) {
                return InkWell(
                  onLongPress: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('ُEditing'),
                          content: const Text('Do you want to delete this advice?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                print('Cancel');
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () async {
                                print('OK');
                                await FirebaseFirestore.instance
                                    .collection("Warnings")
                                    .doc(data[i].id)
                                    .delete();
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const addWarningScreen()),
                                );
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Card(
                    color: Color.fromRGBO(114, 31, 27, 1.0),
                    margin: const EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Color.fromRGBO(
                          108, 32, 26, 1.0)),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          "${data[i]["Warnings"]}",
                          textAlign: TextAlign.center, // Align text to the center
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
