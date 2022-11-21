import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool dark = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("SETTINGS"),
          centerTitle: true,
          backgroundColor: Color(0xFFBF9D95),
        ),
        body: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              //color: Colors.white,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SizedBox(width: 21,),
                  Icon(dark==false ? Icons.light_mode : Icons.dark_mode),
                  SizedBox(width: 21,),
                  Text(
                    "Dark Mode",
                    style: TextStyle(
                      color: Color(0xFF555259),
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width: 140,),
                  Expanded(child: Switch(value: dark, onChanged: (value){setState(() {
                    dark = value;
                  });},activeColor: Color(0xFFBF9D95),
                  )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
