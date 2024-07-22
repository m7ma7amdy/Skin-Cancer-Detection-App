import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class doctorCard extends StatelessWidget {
  final String doctorName;
  final String doctoraddress;
  final String doctorrate;
  final String doctortime;
  final String doctorphoto;
  const doctorCard({super.key, required this.doctorName, required this.doctoraddress, required this.doctorrate, required this.doctortime, required this.doctorphoto});

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Container(
        width: mediaquery.width/1.2,
        height: mediaquery.height/5,
        color: Color.fromRGBO(
            50, 149, 140, 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset(doctorphoto,height: mediaquery.height/5,width:mediaquery.width/3,),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: mediaquery.height/6,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name :",
                                  style: GoogleFonts.roboto(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Address :",
                                  style: GoogleFonts.roboto(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Rate :",
                                  style: GoogleFonts.roboto(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Time :",
                                  style: GoogleFonts.roboto(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 15,),
                          Container(
                            height: mediaquery.height/6,

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  doctorName,
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  doctoraddress,
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      doctorrate,
                                      style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(width: 5,),
                                    Icon(Icons.star,size: 18,color: Colors.yellow,)
                                  ],
                                ),
                                Text(
                                  doctortime,
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),

                        ],

                      ),

                    ],
                  ),
                )
              ],
            )

          ],
        )
    );
  }
}
