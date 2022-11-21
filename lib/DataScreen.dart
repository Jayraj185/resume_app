import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume_app/MC.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  Widget build(BuildContext context) {
    MC data = ModalRoute.of(context)!.settings.arguments as MC;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:
              Text("CHOOS RESUME", style: TextStyle(color: Color(0xFF555259))),
          centerTitle: true,
          backgroundColor: Color(0xFFBF9D95),
        ),
        body: Column(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.89,
                      width: 150,
                      color: Colors.brown,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10,top: 10),
                      child: Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.black,width: 2)
                        ),
                        child: (data.image==null) ?
                        CircleAvatar(
                          radius: 66,
                          backgroundColor: Colors.white,
                          backgroundImage:AssetImage("assets/image/profile.png") ,
                        ): CircleAvatar(
                          radius: 66,
                          backgroundImage: FileImage(File("${data.image}")),
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 27,top: 151),
                      child: Text(
                        "CONTACT",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 27,top: 165),
                      child: Text(
                        "_________",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3,top: 205),
                      child: Row(
                        children: [
                          Icon(Icons.place,color: Colors.white,),
                          Text(
                            "${data.add}",
                            style: TextStyle(
                              fontSize: 9,
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),Padding(
                      padding: EdgeInsets.only(left: 3,top: 250),
                      child: Row(
                        children: [
                          Icon(Icons.call,color: Colors.white,),
                          Text(
                            "${data.pn}",
                            style: TextStyle(
                              fontSize: 9,
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),Padding(
                      padding: EdgeInsets.only(left: 3,top: 285),
                      child: Row(
                        children: [
                          Icon(Icons.email,color: Colors.white,),
                          Text(
                            "${data.email}",
                            style: TextStyle(
                              fontSize: 9,
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                )
              ],
            )
          ],
        ),
        // body: Container(
        //   height: double.infinity,
        //   width: double.infinity,
        //   child: SingleChildScrollView(
        //     child: Align(
        //       alignment: Alignment.topLeft,
        //       child: Column(
        //         children: [
        //           (data.image==null) ?
        //           CircleAvatar(
        //             radius: 80,
        //             backgroundImage:AssetImage("assets/image/profile.png") ,
        //           ): CircleAvatar(
        //             radius: 80,
        //             backgroundImage: FileImage(File("${data.image}")),
        //           ),
        //           Text(
        //             "${data.fn} ${data.ln}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //           Text(
        //             "${data.edu}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //           Text(
        //             "${data.birth}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //           Text(
        //             "${data.age}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //           Text(
        //             "${data.gender}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //           Text(
        //             "${data.status}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //           Text(
        //             "${data.occ}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //           Text(
        //             "${data.pn}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //           Text(
        //             "${data.email}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //           Text(
        //             "${data.add}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //           Text(
        //             "${data.zc}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //           Text(
        //             "${data.country}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //           Text(
        //             "${data.state}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //           Text(
        //             "${data.city}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //           Text(
        //             "${data.height}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //           Text(
        //             "${data.weight}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //           Text(
        //             "${data.hobby}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //           Text(
        //             "${data.skills} ${data.otherskill}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //           Text(
        //             "${data.summary}",
        //             style: TextStyle(fontSize: 30, color: Color(0xFFBF9D95)),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
