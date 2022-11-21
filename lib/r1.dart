import 'package:flutter/material.dart';

class R1 extends StatefulWidget {
  const R1({Key? key}) : super(key: key);

  @override
  State<R1> createState() => _R1State();
}

class _R1State extends State<R1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Resume Image 1",
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset("assets/image/resum1.webp"),
        )
    );
  }
}

class R2 extends StatefulWidget {
  const R2({Key? key}) : super(key: key);

  @override
  State<R2> createState() => _R2State();
}

class _R2State extends State<R2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Resume Image 2",
          ),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset("assets/image/resum2.webp"),
        )
    );
  }
}

class R3 extends StatefulWidget {
  const R3({Key? key}) : super(key: key);

  @override
  State<R3> createState() => _R3State();
}

class _R3State extends State<R3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Resume Image 3",
          ),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset("assets/image/resum3.webp"),
        )
    );
  }
}

