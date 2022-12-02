import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as p1;
import 'package:resume_app/MC.dart';

void PDF2(MC data) async
{
  var pdf2 = p1.Document();
  // final image = p1.MemoryImage(
  //   File("${data!.image}").readAsBytesSync(),
  // );
  pdf2.addPage(
    p1.Page(
      pageFormat: PdfPageFormat.a4,
      margin: p1.EdgeInsets.all(12),
      orientation: p1.PageOrientation.portrait,
      build: (p1.Context context)
      {
        return p1.Stack(
          children: [
            p1.Container(
              margin: p1.EdgeInsets.only(top: 60),
              height: 160,
              width: double.infinity,
              color: PdfColors.brown300,
            ),
            p1.Container(
              margin: p1.EdgeInsets.only(left: 60),
              height: double.infinity,
              width: 160,
              color: PdfColors.teal100,
            ),
            p1.Padding(
                padding: p1.EdgeInsets.only(left: 73,top: 73),
              child: p1.Container(
                  height: 130,
                  width: 130,
                  decoration: p1.BoxDecoration(
                      color: PdfColors.white,
                      shape: p1.BoxShape.circle,
                      border: p1.Border.all(color: PdfColors.black,width: 2)
                  ),
                // alignment: p1.Alignment.center,
                // child: p1.Image(image),
              )
            ),
            p1.Padding(
              padding: p1.EdgeInsets.only(left: 260,top: 100),
              child: p1.Text(
                "${data.fn}\n${data.ln}",
                style: p1.TextStyle(
                    color: PdfColors.black,
                    fontSize: 20,
                    fontWeight: p1.FontWeight.bold,
                    letterSpacing: 1
                ),
              ),
            ),
            p1.Padding(
              padding: p1.EdgeInsets.only(left: 260,top: 150),
              child: p1.Text(
                "${data.occ}",
                style: p1.TextStyle(
                  color: PdfColors.black,
                  fontSize: 15,
                ),
              ),
            ),
            p1.Padding(
              padding: p1.EdgeInsets.only(left: 88,top: 285),
              child: p1.Text(
                "ABOUT ME",
                style: p1.TextStyle(
                  color: PdfColors.white,
                  fontWeight: p1.FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            p1.Padding(
              padding: p1.EdgeInsets.only(left: 70,top: 315),
              child: p1.Text(
                "My Name Is ${data.fn} ${data.ln},\nI'm Old Of ${data.age} Year, My Birth Date\nIs ${data.birth}, I'm A ${data.status} Person. \nMy Height Is ${data.height} cm And Weight Is\n${data.weight}kg.My Hobbies Is\n${data.hobby}",
                style: p1.TextStyle(
                  color: PdfColors.white,
                  fontSize: 9,
                ),
              ),
            ),
            p1.Padding(
              padding: p1.EdgeInsets.only(left: 85,top: 430),
              child: p1.Text(
                "CONTACT ME",
                style: p1.TextStyle(
                  color: PdfColors.white,
                  fontWeight: p1.FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            p1.Padding(
              padding: p1.EdgeInsets.only(left: 88,top: 460),
              child: p1.Row(
                children: [
                  //Icon(Icons.call,color: Colors.white,size: 12,),
                  //SizedBox(width: 3,),
                  p1.Text(
                    "${data.pn}",
                    style: p1.TextStyle(
                      color: PdfColors.white,
                      fontSize: 9,
                    ),
                  )
                ],
              ),
            ),
            p1.Padding(
              padding: p1.EdgeInsets.only(left: 88,top: 480),
              child: p1.Row(
                children: [
                  // Icon(Icons.mail,color: Colors.white,size: 12,),
                  // SizedBox(width: 3,),
                  p1.Text(
                    "${data.email}",
                    style: p1.TextStyle(
                      color: PdfColors.white,
                      fontSize: 9,
                    ),
                  )
                ],
              ),
            ),
            p1.Padding(
              padding: p1.EdgeInsets.only(left: 88,top: 500),
              child: p1.Row(
                children: [
                  // Icon(Icons.place,color: Colors.white,size: 12,),
                  // SizedBox(width: 3,),
                  p1.Text(
                    "${data.add}, ${data.city},\n${data.state}, ${data.country}, - ${data.zc}.",
                    style: p1.TextStyle(
                      color: PdfColors.white,
                      fontSize: 9,
                    ),
                  )
                ],
              ),
            ),
            p1.Padding(
              padding: p1.EdgeInsets.only(left: 115,top: 585),
              child: p1.Text(
                "SKILL",
                style: p1.TextStyle(
                  color: PdfColors.white,
                  fontWeight: p1.FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            p1.Padding(
              padding: p1.EdgeInsets.only(left: 86,top: 615),
              child: p1.Text(
                "  ${data.otherskill}\n\n ${data.skill1}\n\n${data.skill2}\n\n${data.skill3}",
                style: p1.TextStyle(
                  color: PdfColors.white,
                  fontSize: 9,
                ),
              ),
            ),
            p1.Padding(
              padding: p1.EdgeInsets.only(left: 295,top: 270),
              child: p1.Row(
                children: [
                  // Icon(Icons.arrow_forward,size: 15,color: Colors.black,),
                  // SizedBox(width: 7,),
                  p1.Text(
                    "EDUCATION",
                    style: p1.TextStyle(
                      color: PdfColors.black,
                      fontWeight: p1.FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            p1.Padding(
              padding: p1.EdgeInsets.only(left: 285,top: 295),
              child: p1.Text(
                "${data.edu}",
                style: p1.TextStyle(
                  color: PdfColors.black,
                  fontSize: 10,
                ),
              ),
            ),
            p1.Padding(
              padding: p1.EdgeInsets.only(left: 295,top: 450),
              child: p1.Row(
                children: [
                  // Icon(Icons.arrow_forward,size: 15,color: Colors.black,),
                  // SizedBox(width: 7,),
                  p1.Text(
                    "EXPERIENCE",
                    style: p1.TextStyle(
                      color: PdfColors.black,
                      fontWeight: p1.FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            p1.Padding(
              padding: p1.EdgeInsets.only(left: 285,top: 480),
              child: p1.Text(
                "${data.expe}",
                style: p1.TextStyle(
                  color: PdfColors.black,
                  fontSize: 10,
                ),
              ),
            ),
            p1.Padding(
              padding: p1.EdgeInsets.only(left: 300,top: 690),
              child: p1.Row(
                children: [
                  // Icon(Icons.arrow_forward,size: 15,color: Colors.black,),
                  // SizedBox(width: 7,),
                  p1.Text(
                    "SUMMARY",
                    style: p1.TextStyle(
                      color: PdfColors.black,
                      fontWeight: p1.FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            p1.Padding(
              padding: p1.EdgeInsets.only(left: 285,top: 715),
              child: p1.Text(
                "${data.summary}",
                style: p1.TextStyle(
                  color: PdfColors.black,
                  fontSize: 10,
                ),
              ),
            ),
          ]
        );
      }
    )
  );
  Directory? d1 = await getExternalStorageDirectory();
  print("==========>> Path === ${d1!.path}");
  File file = File("${d1!.path}/resume2.pdf");
  await file.writeAsBytes(await pdf2.save());
}