import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: Myapp()),
  );
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SecondScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Image.asset('images/test.png'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:MaterialButton(
          onPressed: () {
            setState(() {
              pragma('me');

            });
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.red),
          ),
          color: Colors.transparent,
          textColor: Colors.blue,
          child: Text("BIG BUTTON", style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
