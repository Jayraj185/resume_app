import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/DataScreen.dart';
import 'package:resume_app/DataScreen2.dart';
import 'package:resume_app/DataScreen3.dart';
import 'package:resume_app/FirstScreen.dart';
import 'package:resume_app/HomeScreen.dart';
import 'package:resume_app/SettingScreen.dart';
import 'package:flutter/services.dart';
import 'package:resume_app/r1.dart';

void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  ThemeData light = ThemeData(
    primarySwatch: Colors.brown,
    brightness: Brightness.light
  );
  ThemeData dark = ThemeData(
      primarySwatch: Colors.pink,
      brightness: Brightness.dark
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: light,
      routes: {
        '/' : (context) => FirstScreen(),
        'home' : (context) => HomeScreen(),
        'Data' : (context) => DataScreen(),
        'setting' : (context) => SettingScreen(),
        'Data2' : (context) => DataScreen2(),
        'Data3' : (context) => DataScreen3(),
        'R1' : (context) => R1(),
        'R2' : (context) => R2(),
        'R3' : (context) => R3(),
      },
    ),
  );
}