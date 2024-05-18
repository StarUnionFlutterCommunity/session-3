import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget MyContainer(Color c, String text) {
  return Container(
    height: 200,
    width: 200,
    color: c,
    child: Text(text),
  );
}

class InkwellEx extends StatefulWidget {
  const InkwellEx({super.key});

  @override
  State<InkwellEx> createState() => _InkwellExState();
}

class _InkwellExState extends State<InkwellEx> {
  Color c = Colors.black;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Container(
            //   height: 200,
            //   width: 200,
            //   color: Colors.red,
            //   child: Text("Cont 1"),
            // ),
            // Container(
            //   height: 200,
            //   width: 200,
            //   color: Colors.green,
            //   child: Text("Cont 2"),
            // ),
            // Container(
            //   height: 200,
            //   width: 200,
            //   color: Colors.blue,
            //   child: Text("Cont 3"),
            // ),
            // Container(
            //   height: 200,
            //   width: 200,
            //   color: Colors.black,
            //   child: Text("Cont 4"),
            // ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MyContainer(Colors.red, "cont 1"),
                  MyContainer(Colors.green, "cont 2"),
                  MyContainer(Colors.blue, "cont 3"),
                ]
              ),
            ),
            MyContainer(Colors.red, "cont 1"),
            MyContainer(Colors.green, "cont 2"),
            // MyContainer(Colors.blue, "cont 3"),
            // MyContainer(Colors.black, "cont 4"),
          ],
        ),
      ),
    );
  }
}
