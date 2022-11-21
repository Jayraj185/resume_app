import 'dart:io';

import 'package:flutter/material.dart';

import 'MC.dart';

class DataScreen2 extends StatefulWidget {
  const DataScreen2({Key? key}) : super(key: key);

  @override
  State<DataScreen2> createState() => _DataScreen2State();
}

class _DataScreen2State extends State<DataScreen2> {
  @override
  Widget build(BuildContext context) {
    MC data = ModalRoute.of(context)!.settings.arguments as MC;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Resume 2"),
            centerTitle: true,
            backgroundColor: Colors.teal.shade300,
          ),
          body: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 120,
                width: double.infinity,
                color: Color(0xFFDBA39A),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                height: double.infinity,
                width: 120,
                color: Color(0xFF95D1CC),
              ),
              Container(
                margin: EdgeInsets.only(left: 37,top: 36),
                height: 105,
                width: 105,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.white,width: 2)
                ),
                child: (data.image==null) ?
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage:AssetImage("assets/image/profile.png") ,
                ): CircleAvatar(
                  backgroundImage: FileImage(File("${data.image}")),
                  backgroundColor: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 170,top: 60),
                child: Text(
                  "${data.fn}\n${data.ln}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 173,top: 108),
                child: Text(
                  "${data.occ}",
                  style: TextStyle(
                      color: Color(0xFF555259),
                      fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50,top: 187),
                child: Text(
                  "ABOUT ME",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 45,top: 215),
                child: Text(
                  "My Name Is ${data.fn} ${data.ln},\nI'm Old Of ${data.age} Year, My Birth Date\nIs ${data.birth}, I'm A ${data.status} Person. \nMy Height Is ${data.height} cm And Weight Is\n${data.weight}kg.My Hobbies Is\n${data.hobby}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 6,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 43,top: 290),
                child: Text(
                  "CONTACT ME",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40,top: 321),
                child: Row(
                  children: [
                    Icon(Icons.call,color: Colors.white,size: 12,),
                    SizedBox(width: 3,),
                    Text(
                      "${data.pn}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 6,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40,top: 340),
                child: Row(
                  children: [
                    Icon(Icons.mail,color: Colors.white,size: 12,),
                    SizedBox(width: 3,),
                    Text(
                      "${data.email}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 6,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40,top: 360),
                child: Row(
                  children: [
                    Icon(Icons.place,color: Colors.white,size: 12,),
                    SizedBox(width: 3,),
                    Text(
                      "${data.add}, ${data.city},\n${data.state}, ${data.country}, - ${data.zc}.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 6,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 68,top: 415),
                child: Text(
                  "SKILL",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50,top: 440),
                child: Text(
                  "${data.otherskill}\n\n${data.skill1}\n\n${data.skill2}\n\n${data.skill3}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 6,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 180,top: 185),
                child: Row(
                  children: [
                    Icon(Icons.arrow_forward,size: 15,color: Colors.black,),
                    SizedBox(width: 7,),
                    Text(
                      "EDUCATION",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 185,top: 212),
                child: Text(
                  "${data.edu}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 180,top: 315),
                child: Row(
                  children: [
                    Icon(Icons.arrow_forward,size: 15,color: Colors.black,),
                    SizedBox(width: 7,),
                    Text(
                      "EXPERIENCE",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 185,top: 345),
                child: Text(
                  "${data.expe}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 180,top: 515),
                child: Row(
                  children: [
                    Icon(Icons.arrow_forward,size: 15,color: Colors.black,),
                    SizedBox(width: 7,),
                    Text(
                      "SUMMARY",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 185,top: 540),
                child: Text(
                  "${data.summary}",
                  style: TextStyle(
                    color: Colors.black,
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
