import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/DataScreen.dart';
import 'package:resume_app/FirstScreen.dart';
import 'package:resume_app/HomeScreen.dart';
import 'package:resume_app/SettingScreen.dart';
import 'package:flutter/services.dart';

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
      },
    ),
  );
}