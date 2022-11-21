import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:resume_app/MC.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_app/pdf1.dart';
import 'package:resume_app/pdf2.dart';
import 'package:resume_app/pdf3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController txtFN = TextEditingController();
  TextEditingController txtLN = TextEditingController();
  TextEditingController txtEdu = TextEditingController();
  TextEditingController txtBirth = TextEditingController();
  TextEditingController txtAge = TextEditingController();
  TextEditingController txtOcc = TextEditingController();
  TextEditingController txtPN = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtAdd = TextEditingController();
  TextEditingController txtZC = TextEditingController();
  TextEditingController txtH = TextEditingController();
  TextEditingController txtW = TextEditingController();
  TextEditingController txtHoby = TextEditingController();
  TextEditingController txtOtherSkill = TextEditingController();
  TextEditingController txtSummary = TextEditingController();
  TextEditingController txtExpe = TextEditingController();
  String contry = "India";
  String state = "Gujarat";
  String city = "Surat";
  String gender = "Male";
  String status = "Single";
  bool skill = false;
  bool skill2 = false;
  bool skill3 = false;
  bool skill4 = false;
  bool skill5 = false;
  bool skill6 = false;
  bool skill7 = false;
  bool skill8 = false;
  String fn = "";
  String ln = "";
  String edu = "";
  String birth = "";
  String age = "";
  String occ = "";
  String pn = "";
  String email = "";
  String add = "";
  String zc = "";
  String h = "";
  String w = "";
  String hoby = "";
  String otherskill = "";
  String summary = "";
  String expe = "";
  List AllCountry = [
    "India",
    "Armenia",
    "Bangladesh",
    "Bhutan",
    "Brazil",
    "Pakistan",
    "China",
    "Australia",
    "Netherlands",
    "England",
    "Zimbabwe",
    "New Zealand",
    "Ireland",
    "Scotland",
    "United States",
    "Sri Lanka",
    "Afghanistan",
    "South Africa",
    "Namibia",
    "UAE"
  ];
  List IndState = [
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttarakhand",
    "Uttar Pradesh",
    "West Bengal"
  ];
  List GujCity = [
    "Ahmedabad",
    "Amreli",
    "Anand",
    "Aravalli",
    "Banaskantha",
    "Bharuch",
    "Bhavnagar",
    "Botad",
    "Chhota Udaipur",
    "Dahod",
    "Dang",
    "Devbhoomi Dwarka",
    "Gandhinagar",
    "Gir Somnath	",
    "Jamnagar",
    "Junagadh",
    "Kutch",
    "Kheda",
    "Mahisagar",
    "Mehsana",
    "Morbi",
    "Narmada",
    "Navsari",
    "Panchmahal",
    "Patan",
    "Porbandar",
    "Rajkot",
    "Sabarkantha",
    "Surat",
    "Surendranagar",
    "Tapi",
    "Vadodara",
    "Valsad",
  ];
  String? path;

  FontWeight bold()
  {
    return FontWeight.bold;
  }
  Icons icon(Icons)
  {
    return Icons.Icons;
  }

  Widget bottomsheet() {
    return Container(
      height: 136,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      alignment: Alignment.topLeft,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Choose Profile Photo",
              style: TextStyle(fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF555259)),
            ),
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 12,),
              Padding(
                padding: EdgeInsets.only(top: 55),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        ImagePicker pick = ImagePicker();
                        XFile? img = await pick.pickImage(
                            source: ImageSource.camera);
                        setState(() {
                          path = img!.path;
                        });
                      },
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: Colors.black12, width: 2)
                        ),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.camera_alt, color: Color(0xFFBF9D95),),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 12,),
              Padding(
                padding: EdgeInsets.only(left: 30, top: 55),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        ImagePicker pick2 = ImagePicker();
                        XFile? img2 = await pick2.pickImage(
                            source: ImageSource.gallery);
                        setState(() {
                          path = img2!.path;
                        });
                      },
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: Colors.black12, width: 2)
                        ),
                        alignment: Alignment.center,
                        child: Icon(Icons.image, color: Color(0xFFBF9D95),),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              SizedBox(width: 8,),
              Padding(
                padding: EdgeInsets.only(top: 115),
                child: Column(
                  children: [
                    Text(
                        "Camera",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black45
                        )
                    )
                  ],
                ),
              ),
              SizedBox(width: 38,),
              Padding(
                padding: EdgeInsets.only(top: 115),
                child: Column(
                  children: [
                    Text(
                        "Gallery",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black45
                        )
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  var valid = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: back,
      child: SafeArea(
          child: Form(
            key: valid,
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                  "RESUME MAKER", style: TextStyle(color: Color(0xFF555259)),),
                centerTitle: true,
                backgroundColor: Color(0xFFBF9D95),
                actions: [
                  PopupMenuButton(itemBuilder: (context) {
                    return [
                      PopupMenuItem(child: Row(
                        children: [
                          Icon(Icons.refresh, color: Color(0xFF555259),),
                          SizedBox(width: 15,),
                          Text("Refresh"),
                        ],
                      ),
                        onTap: () {
                          setState(() {
                            path = null;
                            txtFN.clear();
                            txtLN.clear();
                            txtEdu.clear();
                            txtBirth.clear();
                            txtAge.clear();
                            txtOcc.clear();
                            txtPN.clear();
                            txtEmail.clear();
                            txtAdd.clear();
                            txtZC.clear();
                            txtH.clear();
                            txtW.clear();
                            txtHoby.clear();
                            txtOtherSkill.clear();
                            txtSummary.clear();
                            txtExpe.clear();
                            skill = false;
                            skill2 = false;
                            skill3 = false;
                            skill4 = false;
                            skill5 = false;
                            skill6 = false;
                            skill7 = false;
                            skill8 = false;
                          });
                        },),
                      PopupMenuItem(child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'setting');
                              },
                              child: Icon(
                                Icons.settings, color: Color(0xFF555259),
                              )
                          ),
                          SizedBox(width: 15,),
                          InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'setting');
                              },
                              child: Text("Settings")
                          ),
                        ],
                      ),
                      ),
                      PopupMenuItem(child: InkWell(onTap: (){
                        Navigator.pushNamed(context, 'R1');
                      },child: Row(
                        children: [
                          Icon(Icons.looks_one,color: Color(0xFF555259),),
                          SizedBox(width: 15,),
                          Text("Resume Type 1"),
                        ],
                      )),
                      ),
                      PopupMenuItem(child: InkWell(onTap: (){Navigator.pushNamed(context, 'R2');},child: Row(
                        children: [
                          Icon(Icons.looks_two_rounded,color: Color(0xFF555259),),
                          SizedBox(width: 15,),
                          Text("Resume Type 2"),
                        ],
                      )),
                      ),
                      PopupMenuItem(child: InkWell(onTap: (){Navigator.pushNamed(context, 'R3');},child: Row(
                        children: [
                          Icon(Icons.looks_3,color: Color(0xFF555259),),
                          SizedBox(width: 15,),
                          Text("Resume Type 3"),
                        ],
                      )),
                      ),
                    ];
                  }),
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 15,),

                    Stack(
                      children: [
                        (path == null) ?
                        CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage(
                              "assets/image/profile.png"),
                        ) : CircleAvatar(
                          radius: 80,
                          backgroundImage: FileImage(File("$path")),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 105, top: 110),
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: ((builder) => bottomsheet()),
                              );
                            },
                            child: Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF555259)
                                ),
                                child: Icon(
                                  Icons.camera_alt, color: Colors.white,)
                            ),
                          ),
                        )
                        // Positioned(
                        //     bottom: 20,
                        //     right: 20,
                        //     child: InkWell(

                        //   child: Icon(Icons.camera_alt,size: 25,),
                        // ))
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, top: 12),
                          child: Text("First Name",
                            style: TextStyle(fontSize: 20, color: Color(
                                0xFF555259)),)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                      child: TextFormField(

                        controller: txtFN,
                        textInputAction: TextInputAction.next,
                        cursorColor: Color(0xFF555259),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(9)
                          ),
                          hintText: "Enter First Name(Capital) Ex. JAY",
                          prefixIcon: Icon(Icons.person, color: Color(
                              0xFFBF9D95),),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Your First Name";
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: Text("Last Name",
                            style: TextStyle(fontSize: 20, color: Color(
                                0xFF555259)),)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                      child: TextFormField(
                        controller: txtLN,
                        textInputAction: TextInputAction.next,
                        cursorColor: Color(0xFF555259),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(9)
                          ),
                          hintText: "Enter Last Name(Capital) Ex. KALSARIYA",
                          prefixIcon: Icon(Icons.person, color: Color(
                              0xFFBF9D95),),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Your Last Name";
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, top: 12),
                          child: Text("Education",
                            style: TextStyle(fontSize: 20, color: Color(
                                0xFF555259)),)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                      child: TextFormField(
                        controller: txtEdu,
                        cursorColor: Color(0xFF555259),
                        maxLines: 2,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(9)
                          ),
                          hintText: "Enter Education Ex. BCA,Diploma,Science",
                          prefixIcon: Icon(
                            Icons.cast_for_education, color: Color(
                              0xFFBF9D95),),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Your Education";
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, top: 12),
                          child: Text("Birth Date",
                            style: TextStyle(fontSize: 20, color: Color(
                                0xFF555259)),)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                      child: TextFormField(
                        controller: txtBirth,
                        style: TextStyle(color: Color(0xFF555259)),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(9)
                          ),
                          hintText: "Enter Birth Date Ex. 1-1-2022",
                          prefixIcon: Icon(Icons.cake_rounded, color: Color(
                              0xFFBF9D95),),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Your Birth Date";
                          }
                          else {
                            return null;
                          }
                        },
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101),
                            builder: (context, child) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: ColorScheme.fromSwatch(
                                    primarySwatch: Colors.blueGrey,
                                    backgroundColor: Colors.lightBlue,
                                    cardColor: Colors.white,
                                  ),
                                ),
                                child: child!,
                              );
                            },
                          );

                          if (pickedDate != null) {
                            String formattedDate =
                            DateFormat('dd-MM-yyyy').format(pickedDate);
                            setState(
                                  () {
                                txtBirth.text = formattedDate;
                              },
                            );
                          } else {
                            print("Date is not selected");
                          }
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, top: 12),
                          child: Text(
                            "Age", style: TextStyle(fontSize: 20, color: Color(
                              0xFF555259)),)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                      child: TextFormField(
                        controller: txtAge,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        cursorColor: Color(0xFF555259),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),

                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(9)
                          ),
                          hintText: "Enter Age Ex. 18",
                          prefixIcon: Icon(Icons.calendar_month, color: Color(
                              0xFFBF9D95),),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Your Age";
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 12, left: 30),
                                  child: Text(
                                    "Gender",
                                    style: TextStyle(
                                        fontSize: 20, color: Color(0xFF555259)),
                                  )),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Radio(value: "Male",
                                      groupValue: gender,
                                      onChanged: (value) {
                                        setState(() {
                                          gender = value as String;
                                        });
                                      },
                                      activeColor: Color(0xFFBF9D95),
                                    ),
                                    Text("Male", style: TextStyle(
                                        color: Color(0xFF555259)),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(value: "Female",
                                      groupValue: gender,
                                      onChanged: (value) {
                                        setState(() {
                                          gender = value as String;
                                        });
                                      },
                                      activeColor: Color(0xFFBF9D95),
                                    ),
                                    Text("Female", style: TextStyle(
                                        color: Color(0xFF555259)))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 12, left: 30),
                                  child: Text(
                                    "Status",
                                    style: TextStyle(
                                        fontSize: 20, color: Color(0xFF555259)),
                                  )),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Radio(value: "Single",
                                      groupValue: status,
                                      onChanged: (value) {
                                        setState(() {
                                          status = value as String;
                                        });
                                      },
                                      activeColor: Color(0xFFBF9D95),
                                    ),
                                    Text("Single", style: TextStyle(
                                        color: Color(0xFF555259)),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(value: "Married",
                                      groupValue: status,
                                      onChanged: (value) {
                                        setState(() {
                                          status = value as String;
                                        });
                                      },
                                      activeColor: Color(0xFFBF9D95),
                                    ),
                                    Text("Married", style: TextStyle(
                                        color: Color(0xFF555259)))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, top: 12),
                          child: Text("Occupations",
                            style: TextStyle(fontSize: 20, color: Color(
                                0xFF555259)),)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                      child: TextFormField(
                        controller: txtOcc,
                        textInputAction: TextInputAction.next,
                        cursorColor: Color(0xFF555259),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(9)
                          ),
                          hintText: "Enter Occupations Ex. Business",
                          prefixIcon: Icon(Icons.work, color: Color(
                              0xFFBF9D95),),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Your Occupations";
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, top: 12),
                          child: Text("Phone Number",
                            style: TextStyle(fontSize: 20, color: Color(
                                0xFF555259)),)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                      child: TextFormField(
                        controller: txtPN,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        cursorColor: Color(0xFF555259),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(9)
                          ),
                          hintText: "Enter Phone Number Ex. +91 8493028490",
                          prefixIcon: Icon(Icons.phone, color: Color(
                              0xFFBF9D95),),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Your Phone Number";
                          }
                          else if (value.length != 10) {
                            return "Please Check Your Phone Number";
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, top: 12),
                          child: Text("Email",
                            style: TextStyle(fontSize: 20, color: Color(
                                0xFF555259)),)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                      child: TextFormField(
                        controller: txtEmail,
                        textInputAction: TextInputAction.next,
                        cursorColor: Color(0xFF555259),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(9)
                          ),
                          hintText: "Enter Email Ex. xyz123@gmail.com",
                          prefixIcon: Icon(Icons.email, color: Color(
                              0xFFBF9D95),),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Your Email";
                          }
                          else if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                            return "Please Enter Valid Email";
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, top: 12),
                          child: Text("Address",
                            style: TextStyle(fontSize: 20, color: Color(
                                0xFF555259)),)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                      child: TextFormField(
                        controller: txtAdd,
                        textInputAction: TextInputAction.next,
                        cursorColor: Color(0xFF555259),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(9)
                          ),
                          hintText: "Enter Address Ex. A5, Ashwini Kumar Rd, Gaushala,",
                          prefixIcon: Icon(Icons.place, color: Color(
                              0xFFBF9D95),),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Your Address";
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, top: 12),
                          child: Text("Zip Code",
                            style: TextStyle(fontSize: 20, color: Color(
                                0xFF555259)),)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                      child: TextFormField(
                        controller: txtZC,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        cursorColor: Color(0xFF555259),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),

                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(9)
                          ),
                          hintText: "Enter Zip Code Ex. 395010",
                          prefixIcon: Icon(Icons.place, color: Color(
                              0xFFBF9D95),),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Your Zip Code";
                          }
                          else {
                            return null;
                          }
                        },
                      ),
                    ),
                    // Padding(
                    //   padding:  EdgeInsets.all(15.0),
                    //   child: CSCPicker(
                    //     selectedItemStyle:
                    //     TextStyle(color: Color(0xFF555259), fontSize: 18),
                    //     disabledDropdownDecoration: BoxDecoration(
                    //       borderRadius: BorderRadius.all(
                    //         Radius.circular(15),
                    //       ),
                    //       color: Color(0xFFBF9D95),
                    //     ),
                    //     searchBarRadius: 10.0,
                    //     dropdownDecoration: BoxDecoration(
                    //       borderRadius: BorderRadius.all(
                    //         Radius.circular(15),
                    //       ),
                    //       color: Color(0xFFBF9D95),
                    //     ),
                    //     layout: Layout.vertical,
                    //     onCountryChanged: (country) {
                    //       contry = country!;
                    //     },
                    //     onStateChanged: (states) {
                    //       state = states!;
                    //     },
                    //     onCityChanged: (citys) {
                    //       city = citys!;
                    //     },
                    //     countryDropdownLabel: "Country",
                    //
                    //     stateDropdownLabel: "State",
                    //     cityDropdownLabel: "City",
                    //     dropdownDialogRadius: 30,
                    //   ),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 12),
                                  child: Text("Country", style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xFF555259)),)),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Container(
                                  height: 46,
                                  width: 170,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFBF9D95),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  alignment: Alignment.center,
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      items: AllCountry
                                          .asMap()
                                          .entries
                                          .map((e) =>
                                          DropdownMenuItem(
                                            child: Text("${AllCountry[e.key]}"),
                                            value: "${AllCountry[e.key]}",),)
                                          .toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          contry = value as String;
                                        });
                                      },
                                      value: contry,
                                      dropdownColor: Color(0xFFBF9D95),
                                      iconEnabledColor: Color(0xFF555259),

                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 12),
                                  child: Text("State", style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xFF555259)),)),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Container(
                                  height: 46,
                                  width: 170,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFBF9D95),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  alignment: Alignment.center,
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      items: IndState
                                          .asMap()
                                          .entries
                                          .map((e) =>
                                          DropdownMenuItem(
                                            child: Text("${IndState[e.key]}"),
                                            value: "${IndState[e.key]}",),)
                                          .toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          state = value as String;
                                        });
                                      },
                                      value: state,
                                      dropdownColor: Color(0xFFBF9D95),
                                      iconEnabledColor: Color(0xFF555259),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(top: 12, left: 175),
                          child: Text(
                            "City", style: TextStyle(fontSize: 20, color: Color(
                              0xFF555259)),)),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, left: 110),
                        child: Container(
                          height: 46,
                          width: 170,
                          decoration: BoxDecoration(
                              color: Color(0xFFBF9D95),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          alignment: Alignment.center,
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              items: GujCity
                                  .asMap()
                                  .entries
                                  .map((e) =>
                                  DropdownMenuItem(
                                    child: Text("${GujCity[e.key]}"),
                                    value: "${GujCity[e.key]}",),).toList(),

                              onChanged: (value) {
                                setState(() {
                                  city = value as String;
                                });
                              },
                              value: city,
                              dropdownColor: Color(0xFFBF9D95),
                              iconEnabledColor: Color(0xFF555259),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: Text("Hieght",
                            style: TextStyle(fontSize: 20, color: Color(
                                0xFF555259)),)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                      child: TextField(
                        controller: txtH,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        cursorColor: Color(0xFF555259),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(9)
                          ),
                          hintText: "Enter Height Ex. 160",
                          prefixIcon: Icon(Icons.height, color: Color(
                              0xFFBF9D95),),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: Text("Weight",
                            style: TextStyle(fontSize: 20, color: Color(
                                0xFF555259)),)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                      child: TextField(
                        controller: txtW,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        cursorColor: Color(0xFF555259),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(9)
                          ),
                          hintText: "Enter Weight Ex. 60",
                          prefixIcon: Icon(
                            Icons.monitor_weight_outlined, color: Color(
                              0xFFBF9D95),),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: Text("hobbies",
                            style: TextStyle(fontSize: 20, color: Color(
                                0xFF555259)),)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                      child: TextField(
                        controller: txtHoby,
                        //textInputAction: TextInputAction.next,
                        cursorColor: Color(0xFF555259),
                        maxLines: 2,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(9)
                          ),
                          hintText: "Enter hobbies Ex. Playing sports (Cricket, etc.), Reading and writing books",
                          prefixIcon: Icon(
                            Icons.accessibility_sharp, color: Color(
                              0xFFBF9D95),),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: Text("Skills",
                            style: TextStyle(fontSize: 20, color: Color(
                                0xFF555259)),)),
                    ),
                    CheckboxListTile(value: skill,
                      onChanged: (value) {
                        setState(() {
                          skill = value!;
                        });
                      },
                      title: Text("Swimming"),
                      activeColor: Color(0xFFBF9D95),),
                    CheckboxListTile(value: skill2, onChanged: (value) {
                      setState(() {
                        skill2 = value!;
                      });
                    }, title: Text("Sports"), activeColor: Color(0xFFBF9D95),),
                    CheckboxListTile(value: skill3,
                      onChanged: (value) {
                        setState(() {
                          skill3 = value!;
                        });
                      },
                      title: Text("Solving Puzzle"),
                      activeColor: Color(0xFFBF9D95),),
                    CheckboxListTile(value: skill4,
                      onChanged: (value) {
                        setState(() {
                          skill4 = value!;
                        });
                      },
                      title: Text("Travelling"),
                      activeColor: Color(0xFFBF9D95),),
                    CheckboxListTile(value: skill5,
                      onChanged: (value) {
                        setState(() {
                          skill5 = value!;
                        });
                      },
                      title: Text("Sketching "),
                      activeColor: Color(0xFFBF9D95),),
                    CheckboxListTile(value: skill6, onChanged: (value) {
                      setState(() {
                        skill6 = value!;
                      });
                    }, title: Text("Drawing"), activeColor: Color(0xFFBF9D95),),
                    CheckboxListTile(value: skill7,
                      onChanged: (value) {
                        setState(() {
                          skill7 = value!;
                        });
                      },
                      title: Text("Painting"),
                      activeColor: Color(0xFFBF9D95),),
                    CheckboxListTile(value: skill8, onChanged: (value) {
                      setState(() {
                        skill8 = value!;
                      });
                    }, title: Text("Coding"), activeColor: Color(0xFFBF9D95),),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                      child: TextField(
                        controller: txtOtherSkill,
                        //textInputAction: TextInputAction.next,
                        cursorColor: Color(0xFF555259),
                        maxLines: 2,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(9)
                          ),
                          hintText: "Enter Other Skills Ex. Communication, Problem-solving, Leadership",
                          prefixIcon: Icon(Icons.add_box, color: Color(
                              0xFFBF9D95),),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: Text("Summary",
                            style: TextStyle(fontSize: 20, color: Color(
                                0xFF555259)),)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                      child: TextFormField(
                        controller: txtSummary,
                        //textInputAction: TextInputAction.next,
                        cursorColor: Color(0xFF555259),
                        maxLines: 2,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(9)
                          ),
                          hintText: "Enter Summary Ex. Senior Customer Service Representative with 4+ Year Of Experience...",
                          prefixIcon: Icon(
                            Icons.accessibility_sharp, color: Color(
                              0xFFBF9D95),),
                        ),
                        validator: (value){
                          if(value!.isEmpty)
                            {
                              return "Please Enter Your Summary";
                            }
                          else
                            {
                              return null;
                            }
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: Text("Experience",
                            style: TextStyle(fontSize: 20, color: Color(
                                0xFF555259)),)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                      child: TextFormField(
                        controller: txtExpe,
                        //textInputAction: TextInputAction.next,
                        cursorColor: Color(0xFF555259),
                        maxLines: 2,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF555259)),
                              borderRadius: BorderRadius.circular(9)
                          ),
                          hintText: "Enter Experience Ex. Increased user experience by 20% ......",
                          prefixIcon: Icon(
                            Icons.accessibility_sharp, color: Color(
                              0xFFBF9D95),),
                        ),
                        validator: (value){
                          if(value!.isEmpty)
                            {
                              return "Please Enter Your Experience";
                            }
                          else
                            {
                              return null;
                            }
                        },
                      ),
                    ),
                    SizedBox(height: 21,),
                    InkWell(
                      onTap: () {
                        //List ResumeData = [];
                        // String skills = "";
                        String skills1 = "";
                        String skills2 = "";
                        String skills3 = "";

                        if (skill == true) {
                          skills1 = skills1 + "Swimming";
                        }
                        if (skill2 == true) {
                          skills1 = skills1 + " Sports";
                        }
                        if (skill3 == true) {
                          skills2 = skills2 + " Solving Puzzel";
                        }
                        if (skill4 == true) {
                          skills2 = skills2 + " Travelling";
                        }
                        if (skill5 == true) {
                          skills3 = skills3 + " Sketching";
                        }
                        if (skill6 == true) {
                          skills3 = skills3 + " Drawing";
                        }
                        if (skill7 == true) {
                          skills3 = skills3 + " Painting";
                        }
                        if (skill8 == true) {
                          skills1 = skills1 + " Coding";
                        }
                        setState(() {
                          fn = txtFN.text;
                          ln = txtLN.text;
                          edu = txtEdu.text;
                          birth = txtBirth.text;
                          age = txtAge.text;
                          occ = txtOcc.text;
                          pn = txtPN.text;
                          email = txtEmail.text;
                          add = txtAdd.text;
                          zc = txtZC.text;
                          h = txtH.text;
                          w = txtW.text;
                          hoby = txtHoby.text;
                          otherskill = txtOtherSkill.text;
                          summary = txtSummary.text;
                          expe = txtExpe.text;
                          // ResumeData.add(fn);
                          // ResumeData.add(ln);
                          // ResumeData.add(edu);
                          // ResumeData.add(birth);
                          // ResumeData.add(age);
                          // ResumeData.add(gender);
                          // ResumeData.add(status);
                          // ResumeData.add(occ);
                          // ResumeData.add(pn);
                          // ResumeData.add(email);
                          // ResumeData.add(add);
                          // ResumeData.add(zc);
                          // ResumeData.add(contry);
                          // ResumeData.add(state);
                          // ResumeData.add(city);
                          // ResumeData.add(h);
                          // ResumeData.add(w);
                          // ResumeData.add(hoby);
                          // ResumeData.add(skills);
                          // ResumeData.add(otherskill);
                          // ResumeData.add(summary);
                        });
                        MC m1 = MC(fn: fn,
                            image: path,
                            ln: ln,
                            edu: edu,
                            birth: birth,
                            age: age,
                            gender: gender,
                            status: status,
                            occ: occ,
                            pn: pn,
                            email: email,
                            add: add,
                            zc: zc,
                            country: contry,
                            state: state,
                            city: city,
                            height: h,
                            weight: w,
                            hobby: hoby,
                            skill1: skills1,
                            skill2: skills2,
                            skill3: skills3,
                            otherskill: otherskill,
                            summary: summary,
                            expe: expe,
                        );
                        if (valid.currentState!.validate()) {
                          TypeOfResume(m1);
                        }
                        else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Please Complete Fill Form")));
                        }
                      },
                      child: Container(
                        height: 60,
                        width: 210,
                        decoration: BoxDecoration(
                            color: Color(0xFFBF9D95),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              fontSize: 26,
                              color: Color(0xFF555259)
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }

  void alert() {
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Color(0xFFBF9D95),
        title: Text("Are You Sure To Exit", style: TextStyle(fontSize: 21,
            color: Color(0xFF555259),
            fontWeight: FontWeight.bold)),
        actions: [
          TextButton(onPressed: () {
            exit(0);
          },
              child: Text("Yes", style: TextStyle(fontSize: 21,
                  color: Color(0xFF555259),
                  fontWeight: FontWeight.bold),)),
          TextButton(onPressed: () {
            Navigator.pop(context);
          },
              child: Text("No", style: TextStyle(fontSize: 21,
                  color: Color(0xFF555259),
                  fontWeight: FontWeight.bold),)),
        ],
      );
    });
  }

  Future<bool> back() async
  {
    alert();
    return await false;
  }
  void TypeOfResume(MC m1)
  {
    showDialog(context: context, builder: (context)
     {
      return AlertDialog(
        backgroundColor: Colors.white,
        content: Container(
          height: 250,
          width: 400,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 6,top: 15),
                child: Text(
                  "Types Of Resume",
                  style: TextStyle(fontSize: 30,color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5,top: 35),
                child: InkWell(
                  onTap: (){
                    resume(m1);
                  },
                  child: Text(
                    "Resume 1",
                    style: TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5,top: 35),
                child: InkWell(
                  onTap: (){
                    resume2(m1);
                  },
                  child: Text(
                    "Resume 2",
                    style: TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5,top: 35),
                child: InkWell(
                  onTap: (){
                    resume3(m1);
                  },
                  child: Text(
                    "Resume 3",
                    style: TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
       );
     }
    );

  }
  void resume(MC m1)
  {
    showDialog(context: context, builder: (context){
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
        content: Container(
          height: 30,
          width: 30,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: InkWell(
                  onTap: (){
                    PDF1(m1);
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Downloads",
                    style: TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ),
              SizedBox(width: 30,),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, 'Data',arguments: m1);
                  },
                  child: Text(
                    "Review",
                    style: TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
  void resume2(MC m1)
  {
    showDialog(context: context, builder: (context){
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
        content: Container(
          height: 30,
          width: 30,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: InkWell(
                  onTap: (){
                    PDF2(m1);
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Downloads",
                    style: TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ),
              SizedBox(width: 30,),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, 'Data2',arguments: m1);
                  },
                  child: Text(
                    "Review",
                    style: TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
  void resume3(MC m1)
  {
    showDialog(context: context, builder: (context){
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
        content: Container(
          height: 30,
          width: 30,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: InkWell(
                  onTap: (){
                    PDF3(m1);
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Downloads",
                    style: TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ),
              SizedBox(width: 30,),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, 'Data3',arguments: m1);
                  },
                  child: Text(
                    "Review",
                    style: TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

