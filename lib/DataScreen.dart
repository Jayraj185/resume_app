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
        backgroundColor: Colors.white,
        appBar: AppBar(
          title:
              Text("YOUR RESUME", style: TextStyle(color: Color(0xFF555259))),
          centerTitle: true,
          backgroundColor: Color(0xFFBF9D95),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*1,
                          width: 235,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12,top: 36),
                          child: Text(
                            "${data.fn}\n${data.ln}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 38
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15,top: 140),
                          child: Text(
                            "${data.occ}",
                            style: TextStyle(
                                color: Colors.brown,
                                fontSize: 12
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15,top: 170),
                          child: Text(
                            "${data.summary}",
                            style: TextStyle(
                                color: Colors.brown,
                                fontSize: 12
                            ),
                          ),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.only(left: 80,top: 300),
                        //   child: Container(
                        //       height: 35,
                        //       width: 150,
                        //       alignment: Alignment.center,
                        //       decoration: BoxDecoration(
                        //           color: Colors.brown,
                        //           borderRadius: BorderRadius.circular(18)
                        //       ),
                        //       child: Text(
                        //         "EXPERIENCE",
                        //         style: TextStyle(
                        //             fontSize: 20,
                        //             color: Colors.white,
                        //             fontWeight: FontWeight.bold
                        //         ),
                        //       )
                        //   ),
                        // ),
                        // Padding(
                        //     padding: EdgeInsets.only(left: 38,top: 360),
                        //     child: Text(
                        //         " ${data.expe}",
                        //         style: TextStyle(
                        //             fontSize: 15,
                        //             color: Colors.brown
                        //         )
                        //     )
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.only(left: 80,top: 660),
                        //   child: Container(
                        //       height: 35,
                        //       width: 150,
                        //       alignment: Alignment.center,
                        //       decoration: BoxDecoration(
                        //           color: Colors.brown,
                        //           borderRadius: BorderRadius.circular(18)
                        //       ),
                        //       child: Text(
                        //         "ABOUT ME",
                        //         style: TextStyle(
                        //             fontSize: 20,
                        //             color: Colors.white,
                        //             fontWeight: FontWeight.bold
                        //         ),
                        //       )
                        //   ),
                        // ),
                        // Padding(
                        //     padding: EdgeInsets.only(left: 38,top: 710),
                        //     child: Text(
                        //         "My Name Is ${data.fn} ${data.ln},I'm Old \nOf ${data.age} Year, My BirthDay ${data.birth},\nI'm A ${data.status} Person. My Height Is ${data.height}cm\nAnd Weight Is ${data.weight}kg. My Hobbies Is\n${data.hobby}",
                        //         style: TextStyle(
                        //             fontSize: 15,
                        //             color: Colors.brown
                        //         )
                        //     )
                        // )
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*1,
                        width: 157,
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(70)
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18,top: 15),
                        child: Container(
                          height: 125,
                          width: 125,
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
                        padding: EdgeInsets.only(left: 23,top: 151),
                        child: Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "CONTACT",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.brown,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5,top: 205),
                        child: Row(
                          children: [
                            Icon(Icons.place,color: Colors.white,size: 18,),
                            SizedBox(width: 3,),
                            Text(
                              "${data.add}, ${data.city},\n${data.state}, ${data.country}, - ${data.zc}.",
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),Padding(
                        padding: EdgeInsets.only(left: 5,top: 235),
                        child: Row(
                          children: [
                            Icon(Icons.call,color: Colors.white,size: 18,),
                            SizedBox(width: 6,),
                            Text(
                              "${data.pn}",
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5,top: 260),
                        child: Row(
                          children: [
                            Icon(Icons.email,color: Colors.white,size: 18,),
                            SizedBox(width: 3,),
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
                      Padding(
                        padding: EdgeInsets.only(left: 20,top:300),
                        child: Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "EDUCATION",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5,top: 345),
                        child: Row(
                          children: [
                            SizedBox(width: 16,),
                            Text(
                              "${data.edu}",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20,top:480),
                        child: Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "SKILL",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.brown,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5,top: 525),
                        child: Row(
                          children: [
                            SizedBox(width: 16,),
                            Text(
                              "${data.otherskill}\n ${data.skill1}\n\n${data.skill2}\n\n${data.skill3}",
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
