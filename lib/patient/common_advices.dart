import 'package:flutter/material.dart';
import 'package:test/patient/get_advice_screen.dart';
import 'package:test/patient/get_warning_screen.dart';
import 'package:test/services.dart';

class roomAddAdviceWarningP extends StatefulWidget {
  static const String routeName = "roomAddAdviceWarning";

  const roomAddAdviceWarningP({Key? key}) : super(key: key);

  @override
  State<roomAddAdviceWarningP> createState() => _roomAddAdviceWarningPState();
}

class _roomAddAdviceWarningPState extends State<roomAddAdviceWarningP> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(45, 161, 151, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(45, 161, 151, 1.0),
        title: const Text('ADVICES AND WARNINGS'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const services()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: size.width/1.1,
                height: size.height/1.1,
                color: Color.fromRGBO(0, 188, 188, 0.5),
                child: Center(
                  child: Stack(
                    children: [
                      Image.asset("assets/images/pngs/advicepage.png",height: size.height/1.6,width: size.width/1.1,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const getAdviceScreen()),
                                  );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 180.0,top: 280),
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 188, 188, 1.0),
                                borderRadius: BorderRadius.circular(80)
                            ),
                            child: Center(
                              child: Text('Go to\nAdvices',textAlign: TextAlign.center,style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),),
                            ),

                            // child: ElevatedButton(
                            //   onPressed: () {
                            //     Navigator.push(
                            //       context,
                            //       MaterialPageRoute(builder: (context) => const getAdviceScreen()),
                            //     );
                            //   },
                            //   child: const
                            // ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: size.width/1.1,
                height: size.height/1.1,
                color: Color.fromRGBO(201, 0, 0, 0.7),
                child: Center(
                  child: Stack(
                    children: [
                      Image.asset("assets/images/pngs/warnningpage.png",height: size.height/1.6,width: size.width/1.1,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const getWarningScreen()),
                                      );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 60.0,top: 280),
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(201, 0, 0, 1.0),
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Center(
                              child: Text('Go to\nWarnnings',textAlign: TextAlign.center,style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),),
                            ),

                            // child: ElevatedButton(
                            //   onPressed: () {

                            //   },
                            //   child: const
                            // ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


            // Container(
            //   width: size.width,
            //   height: size.height/2.6,
            //   color: Colors.red,
            //   child: Center(
            //     child: ElevatedButton(
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(builder: (context) => const getWarningScreen()),
            //         );
            //       },
            //       child: const Text('Go to Warnings'),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

