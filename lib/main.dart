import 'package:flutter/material.dart';
import 'package:session3/home.dart';
import 'package:session3/inkwell_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home:  InkwellEx(),
    );
  }
}
