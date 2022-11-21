import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as p1;
import 'package:resume_app/MC.dart';


void PDF3(MC? data) async
{
  var pdf3 = p1.Document();
  pdf3.addPage(
   p1.Page(
     pageFormat: PdfPageFormat.a4,
     orientation: p1.PageOrientation.portrait,
     margin: p1.EdgeInsets.all(15),
     build: (p1.Context context){
       return p1.Stack(
         children: [
           p1.Container(
             height: 185,
             width: double.infinity,
             color: PdfColors.brown
           ),
           p1.Padding(
             padding: p1.EdgeInsets.only(left: 35,top: 90),
             child: p1.Container(
                 height: double.infinity,
                 width: 185,
                 color: PdfColors.pink100
             ),
           ),
           p1.Padding(
             padding: p1.EdgeInsets.only(left: 68,top: 30),
             child: p1.Container(
                 height: 125,
                 width: 125,
               decoration: p1.BoxDecoration(
                 color: PdfColors.black,
                 border: p1.Border.all(color: PdfColors.white,width: 6)
               )
             ),
           ),
           p1.Padding(
             padding: p1.EdgeInsets.only(left: 70,top: 185),
             child: p1.Text(
               "ABOUT ME",
               style: p1.TextStyle(
                   color: PdfColors.brown900,
                   fontSize: 21,
                   fontWeight: p1.FontWeight.bold
               )
             ),
           ),
           p1.Padding(
             padding: p1.EdgeInsets.only(left: 60,top: 215),
             child: p1.Text(
                 "My Name Is ${data!.fn} ${data.ln},\nI'm Old Of ${data.age} Year, My Birth Date\nIs ${data.birth}, I'm A ${data.status} Person. \nMy Height Is ${data.height} cm And Weight Is\n${data.weight}kg.My Hobbies Is\n${data.hobby}",
                 style: p1.TextStyle(
                     color: PdfColors.brown900,
                     fontSize: 8,
                 )
             ),
           ),
           p1.Padding(
             padding: p1.EdgeInsets.only(left: 76,top: 330),
             child: p1.Text(
                 "SUMMARY",
                 style: p1.TextStyle(
                     color: PdfColors.brown900,
                     fontSize: 21,
                     fontWeight: p1.FontWeight.bold
                 )
             ),
           ),
           p1.Padding(
             padding: p1.EdgeInsets.only(left: 60,top: 360),
             child: p1.Text(
                 "${data.summary}",
                 style: p1.TextStyle(
                   color: PdfColors.brown900,
                   fontSize: 8,
                 )
             ),
           ),
           p1.Padding(
             padding: p1.EdgeInsets.only(left: 100,top: 450),
             child: p1.Text(
                 "SKILL",
                 style: p1.TextStyle(
                     color: PdfColors.brown900,
                     fontSize: 21,
                     fontWeight: p1.FontWeight.bold
                 )
             ),
           ),
           p1.Padding(
             padding: p1.EdgeInsets.only(left: 68,top: 485),
             child: p1.Text(
                 " ${data.otherskill}\n\n ${data.skill1}\n\n${data.skill2}\n\n${data.skill3}",
                 style: p1.TextStyle(
                   color: PdfColors.brown900,
                   fontSize: 8,
                 )
             ),
           ),
           p1.Padding(
             padding: p1.EdgeInsets.only(left: 50,top: 615),
             child: p1.Text(
                 "CONTACT INFO",
                 style: p1.TextStyle(
                     color: PdfColors.brown900,
                     fontSize: 21,
                     fontWeight: p1.FontWeight.bold
                 )
             ),
           ),
           p1.Padding(
             padding: p1.EdgeInsets.only(left: 85,top: 660),
             child: p1.Text(
                 "${data.pn}",
                 style: p1.TextStyle(
                   color: PdfColors.brown900,
                   fontSize: 9,
                 )
             ),
           ),
           p1.Padding(
             padding: p1.EdgeInsets.only(left: 85,top: 680),
             child: p1.Row(
               children: [
                 // Icon(Icons.mail,color: Colors.white,size: 12,),
                 // SizedBox(width: 3,),
                 p1.Text(
                   "${data.email}",
                   style: p1.TextStyle(
                     color: PdfColors.brown,
                     fontSize: 9,
                   ),
                 )
               ],
             ),
           ),
           p1.Padding(
             padding: p1.EdgeInsets.only(left: 85,top: 700),
             child: p1.Row(
               children: [
                 // Icon(Icons.place,color: Colors.white,size: 12,),
                 // SizedBox(width: 3,),
                 p1.Text(
                   "${data.add}, ${data.city},\n${data.state}, ${data.country}, - ${data.zc}.",
                   style: p1.TextStyle(
                     color: PdfColors.brown,
                     fontSize: 9,
                   ),
                 )
               ],
             ),
           ),
           p1.Padding(
             padding: p1.EdgeInsets.only(left: 270,top: 31),
             child: p1.Text(
                 "${data.fn}\n${data.ln}",
                 style: p1.TextStyle(
                     color: PdfColors.pink100,
                     fontSize: 35,
                     fontWeight: p1.FontWeight.bold
                 )
             ),
           ),
           p1.Padding(
             padding: p1.EdgeInsets.only(left: 273,top: 125),
             child: p1.Text(
                 "${data.occ}",
                 style: p1.TextStyle(
                     color: PdfColors.white,
                     fontSize: 15,
                     fontStyle: p1.FontStyle.italic
                 )
             ),
           ),
           p1.Padding(
             padding: p1.EdgeInsets.only(left: 275,top: 250),
             child: p1.Container(
               height: 40,
               width: 260,
               color: PdfColors.pink100,
               alignment: p1.Alignment.centerLeft,
               child: p1.Padding(
                 padding: p1.EdgeInsets.only(left: 15),
                 child: p1.Text(
                     "WORK EXPERIENCE",
                     style: p1.TextStyle(
                         color: PdfColors.brown900,
                         fontSize: 15,
                         fontWeight: p1.FontWeight.bold
                     )
                 ),
               )
             )
           ),
           p1.Padding(
             padding: p1.EdgeInsets.only(left: 278,top: 315),
             child: p1.Text(
                 "${data.expe}",
                 style: p1.TextStyle(
                     color: PdfColors.brown,
                     fontSize: 12,
                 )
             ),
           ),
           p1.Padding(
               padding: p1.EdgeInsets.only(left: 275,top: 520),
               child: p1.Container(
                   height: 40,
                   width: 260,
                   color: PdfColors.pink100,
                   alignment: p1.Alignment.centerLeft,
                   child: p1.Padding(
                     padding: p1.EdgeInsets.only(left: 15),
                     child: p1.Text(
                         "EDUCATION BACKGROUND",
                         style: p1.TextStyle(
                             color: PdfColors.brown900,
                             fontSize: 15,
                             fontWeight: p1.FontWeight.bold
                         )
                     ),
                   )
               )
           ),
           p1.Padding(
             padding: p1.EdgeInsets.only(left: 278,top: 585),
             child: p1.Text(
                 "${data.edu}",
                 style: p1.TextStyle(
                   color: PdfColors.brown,
                   fontSize: 12,
                 )
             ),
           ),
         ]
       );
     }
   )
  );
  Directory? d1 = await getExternalStorageDirectory();
  print("==========>> Path === ${d1!.path}");
  File file = File("${d1.path}/resume3.pdf");
  await file.writeAsBytes(await pdf3.save());
}