import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as p1;
import 'MC.dart';
import 'dart:ui';

void PDF1(MC data) async
{
  var pdf1 = p1.Document();
  // String img = "${data!.image}";
  // String cal = "assets/image/call.jpeg";
  // String mal = "assets/image/mail.jpg";
  // String plac = "assets/image/place.jpg";
  // //final imge = p1.MemoryImage(data.image);
  // final call = p1.MemoryImage(File(cal).readAsBytesSync());
  // final mail = p1.MemoryImage(File(mal).readAsBytesSync());
  // final place = p1.MemoryImage(File(plac).readAsBytesSync());
  pdf1.addPage(
    p1.Page(
      margin: p1.EdgeInsets.all(10),
      orientation: p1.PageOrientation.portrait,
      pageFormat: PdfPageFormat.a4,
      build: (p1.Context context)
        {
          var page;
          return p1.Column(
            children: [
              p1.Row(
                children: [
                    p1.Stack(
                      children: [
                        p1.Container(
                          height: 820,
                          width: 340,
                          color: PdfColors.white,
                          // alignment: p1.Alignment.center,
                          // child: p1.Image(call),
                        ),
                        p1.Padding(
                          padding: p1.EdgeInsets.only(left: 18,top: 36),
                          child: p1.Text(
                            "${data.fn}\n${data.ln}",
                            style: p1.TextStyle(
                                fontWeight: p1.FontWeight.bold,
                                color: PdfColors.brown,
                                fontSize: 41
                            ),
                          ),
                        ),
                        p1.Padding(
                          padding: p1.EdgeInsets.only(left: 21,top: 140),
                          child: p1.Text(
                            "${data.occ}",
                            style: p1.TextStyle(
                                color: PdfColors.brown,
                                fontSize: 15
                            ),
                          ),
                        ),
                        p1.Padding(
                          padding: p1.EdgeInsets.only(left: 21,top: 170),
                          child: p1.Text(
                            "${data.summary}",
                            style: p1.TextStyle(
                                color: PdfColors.brown,
                                fontSize: 15
                            ),
                          ),
                        ),
                        p1.Padding(
                          padding: p1.EdgeInsets.only(left: 80,top: 300),
                          child: p1.Container(
                              height: 35,
                              width: 150,
                              alignment: p1.Alignment.center,
                              decoration: p1.BoxDecoration(
                                  color: PdfColors.brown,
                                  borderRadius: p1.BorderRadius.circular(18)
                              ),
                              child: p1.Text(
                                "EXPERIENCE",
                                style: p1.TextStyle(
                                    fontSize: 20,
                                    color: PdfColors.white,
                                    fontWeight: p1.FontWeight.bold
                                ),
                              )
                          ),
                        ),
                        p1.Padding(
                            padding: p1.EdgeInsets.only(left: 38,top: 360),
                            child: p1.Text(
                                " ${data.expe}",
                                style: p1.TextStyle(
                                    fontSize: 15,
                                    color: PdfColors.brown
                                )
                            )
                        ),
                        p1.Padding(
                            padding: p1.EdgeInsets.only(left: 80,top: 660),
                            child: p1.Container(
                                height: 35,
                                width: 150,
                                alignment: p1.Alignment.center,
                                decoration: p1.BoxDecoration(
                                    color: PdfColors.brown,
                                    borderRadius: p1.BorderRadius.circular(18)
                                ),
                                child: p1.Text(
                                  "ABOUT ME",
                                  style: p1.TextStyle(
                                      fontSize: 20,
                                      color: PdfColors.white,
                                      fontWeight: p1.FontWeight.bold
                                  ),
                                )
                            ),
                        ),
                        p1.Padding(
                          padding: p1.EdgeInsets.only(left: 38,top: 710),
                          child: p1.Text(
                            "My Name Is ${data.fn} ${data.ln},I'm Old \nOf ${data.age} Year, My BirthDay ${data.birth},\nI'm A ${data.status} Person. My Height Is ${data.height}cm\nAnd Weight Is ${data.weight}kg. My Hobbies Is\n${data.hobby}",
                            style: p1.TextStyle(
                              fontSize: 15,
                              color: PdfColors.brown
                            )
                          )
                        )
                      ]
                    ),
                  p1.Stack(
                      children: [
                        p1.Container(
                          height: 820,
                          width: 230,
                          decoration: p1.BoxDecoration(
                            color: PdfColors.brown,
                            borderRadius: p1.BorderRadius.circular(100)
                          )
                        ),
                        p1.Padding(
                            padding: p1.EdgeInsets.only(left: 15,top: 15),
                          child: p1.Container(
                              height: 200,
                              width: 200,
                              decoration: p1.BoxDecoration(
                                  color: PdfColors.white,
                                  shape: p1.BoxShape.circle,
                                  border: p1.Border.all(color: PdfColors.black)
                              ),
                            alignment: p1.Alignment.center,
                            //child: p1.Image(imge),
                          )
                        ),
                        p1.Padding(
                          padding: p1.EdgeInsets.only(left: 38,top: 230),
                          child: p1.Container(
                            height: 35,
                            width: 150,
                            decoration: p1.BoxDecoration(
                                color: PdfColors.white,
                                borderRadius: p1.BorderRadius.circular(18)
                            ),
                            alignment: p1.Alignment.center,
                            child: p1.Text(
                              "CONTACT",
                              style: p1.TextStyle(
                                  fontSize: 20,
                                  color: PdfColors.brown,
                                  fontWeight: p1.FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        p1.Padding(
                          padding: p1.EdgeInsets.only(left: 55,top: 280),
                          child: p1.Row(
                            children: [
                              //p1.Icon(Icons.place,color: PdfColors.white,size: 18,),
                              //p1.Icon(p1.IconData(mt.Icons.place.codePoint,),color: PdfColors.white,size: 15),
                              p1.SizedBox(width: 3,),
                              p1.Text(
                                "${data.add}, ${data.city},\n${data.state}, ${data.country}, - ${data.zc}.",
                                style: p1.TextStyle(
                                    fontSize: 9,
                                    color: PdfColors.white,
                                    fontWeight: p1.FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                        p1.Padding(
                          padding: p1.EdgeInsets.only(left: 53,top: 313),
                          child: p1.Row(
                            children: [
                              //p1.Icon(Icons.call,color: PdfColors.white,size: 18,),
                              p1.SizedBox(width: 6,),
                              p1.Text(
                                "${data.pn}",
                                style: p1.TextStyle(
                                    fontSize: 9,
                                    color: PdfColors.white,
                                    fontWeight: p1.FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                        p1.Padding(
                          padding: p1.EdgeInsets.only(left: 55,top: 330),
                          child: p1.Row(
                            children: [
                              //p1.Icon(Icons.email,color: PdfColors.white,size: 18,),
                              p1.SizedBox(width: 3,),
                              p1.Text(
                                "${data.email}",
                                style: p1.TextStyle(
                                    fontSize: 9,
                                    color: PdfColors.white,
                                    fontWeight: p1.FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                        p1.Padding(
                          padding: p1.EdgeInsets.only(left: 42,top:380),
                          child: p1.Container(
                            height: 35,
                            width: 150,
                            decoration: p1.BoxDecoration(
                                color: PdfColors.white,
                                borderRadius: p1.BorderRadius.circular(18)
                            ),
                            alignment: p1.Alignment.center,
                            child: p1.Text(
                              "EDUCATION",
                              style: p1.TextStyle(
                                  fontSize: 20,
                                  color: PdfColors.brown,
                                  fontWeight: p1.FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        p1.Padding(
                          padding: p1.EdgeInsets.only(left: 50,top: 425),
                          child: p1.Row(
                            children: [
                              p1.SizedBox(width: 16,),
                              p1.Text(
                                "${data.edu}",
                                style: p1.TextStyle(
                                    fontSize: 9,
                                    color: PdfColors.white,
                                    fontWeight: p1.FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                        p1.Padding(
                          padding: p1.EdgeInsets.only(left: 42,top:590),
                          child: p1.Container(
                            height: 35,
                            width: 150,
                            decoration: p1.BoxDecoration(
                                color: PdfColors.white,
                                borderRadius: p1.BorderRadius.circular(18)
                            ),
                            alignment: p1.Alignment.center,
                            child: p1.Text(
                              "SKILL",
                              style: p1.TextStyle(
                                  fontSize: 20,
                                  color: PdfColors.brown,
                                  fontWeight: p1.FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        p1.Padding(
                          padding: p1.EdgeInsets.only(left: 50,top: 635),
                          child: p1.Row(
                            children: [
                              p1.SizedBox(width: 16,),
                              p1.Text(
                                "${data.otherskill}\n\n ${data.skill1}\n\n${data.skill2}\n\n${data.skill3}",
                                style: p1.TextStyle(
                                    fontSize: 9,
                                    color: PdfColors.white,
                                    fontWeight: p1.FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]
                  ),
                ]
              )
            ]
          );
        }
    ),
  );
  Directory? d1 = await getExternalStorageDirectory();
  print("=============>>>  ${d1!.path}");
  File file = File("${d1!.path}/resume1.pdf");
  await file.writeAsBytes(await pdf1.save());
}
