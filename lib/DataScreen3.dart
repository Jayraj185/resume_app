import 'dart:io';

import 'package:flutter/material.dart';
import 'MC.dart';

class DataScreen3 extends StatefulWidget {
  const DataScreen3({Key? key}) : super(key: key);

  @override
  State<DataScreen3> createState() => _DataScreen3State();
}

class _DataScreen3State extends State<DataScreen3> {
  @override
  Widget build(BuildContext context) {
    MC data = ModalRoute.of(context)!.settings.arguments as MC;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Resume 3"),
            centerTitle: true,
            backgroundColor: Colors.pink.shade400,
          ),
          body: Stack(
            children: [
              Container(
                height: 160,
                width: double.infinity,
                color: Colors.brown.shade700,
              ),
              Padding(
                padding: EdgeInsets.only(left: 21,top: 90),
                child: Container(
                  width: 150,
                  height: double.infinity,
                  color: Colors.pink.shade200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 45,top: 40),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 6),
                    color: Colors.white
                  ),
                  alignment: Alignment.center,
                  child: Image.asset("assets/image/profile.png")//Image.file(File("${data.image}"),)
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60,top: 170),
                child: Text(
                  "ABOUT ME",
                  style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 45,top: 200),
                child: Text(
                  "My Name Is ${data.fn} ${data.ln},\nI'm Old Of ${data.age} Year, My Birth Date\nIs ${data.birth}, I'm A ${data.status} Person. \nMy Height Is ${data.height} cm And Weight Is\n${data.weight}kg.My Hobbies Is\n${data.hobby}",
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 6,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60,top: 285),
                child: Text(
                  "SUMMARY",
                  style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 45,top: 315),
                child: Text(
                  "${data.summary}",
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 6,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 74,top: 375),
                child: Text(
                  "SKILL",
                  style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50,top: 405),
                child: Text(
                  "${data.otherskill}\n\n${data.skill1}\n\n${data.skill2}\n\n${data.skill3}",
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 6,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 43,top: 550),
                child: Text(
                  "CONTACT INFO",
                  style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50,top: 580),
                child: Row(
                  children: [
                    Icon(Icons.call,color: Colors.brown,size: 12,),
                    SizedBox(width: 6,),
                    Text(
                      "${data.pn}",
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 8,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50,top: 595),
                child: Row(
                  children: [
                    Icon(Icons.mail,color: Colors.brown,size: 12,),
                    SizedBox(width: 6,),
                    Text(
                      "${data.email}",
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 7,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50,top: 610),
                child: Row(
                  children: [
                    Icon(Icons.place,color: Colors.brown,size: 12,),
                    SizedBox(width: 6,),
                    Text(
                      "${data.add}, ${data.city},\n${data.state}, ${data.country}, - ${data.zc}.",
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 7,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 200,top: 55),
                child: Text(
                  "${data.fn}\n${data.ln}",
                  style: TextStyle(
                      color: Colors.pink.shade200,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 21
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 200,top: 115),
                child: Text(
                  "${data.occ}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontStyle: FontStyle.italic
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 185,top: 215),
                child: Container(
                  height: 30,
                  width: 200,
                  color: Colors.pink.shade200,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "WORK EXPERIENCE",
                      style: TextStyle(
                          color: Colors.brown,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          fontSize: 12
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 185,top: 265),
                child: Text(
                  "${data.expe}",
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 10,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 185,top: 470),
                child: Container(
                  height: 30,
                  width: 200,
                  color: Colors.pink.shade200,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "EDUCATION BACKGROUND",
                      style: TextStyle(
                          color: Colors.brown,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          fontSize: 12
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 185,top: 521),
                child: Text(
                  "${data.edu}",
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 10,
                  ),
                ),
              ),

            ],
          ),
        )
    );
  }
}
