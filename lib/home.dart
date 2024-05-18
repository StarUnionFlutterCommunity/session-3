import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyState();
}

class _MyState extends State<HomeScreen> {
  String str = "Change me";
  Color c = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Session 3"),
        elevation: 10,
        centerTitle: true,
        shadowColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              str,
              style: TextStyle(color: c),
            ),
            OutlinedButton(
              onHover: (value) {
                
              },
                onPressed: () {
                  setState(() {
                    str = "The Text Changed";
                  });
                },
                // style: TextButton.styleFrom(
                //   elevation: 15,
                //   foregroundColor: Colors.white,
                //   backgroundColor: Colors.red,
                //   shadowColor: Colors.blue,
                //   // side: const BorderSide(color: Colors.red, width: 2)
                //  shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(20),
                //     bottomLeft: Radius.circular(0),
                //   )
                //  )
                // ),
                child: Text("Text Button")),
            IconButton(
              onPressed: () {
                setState(() {
                  c = Colors.black;
                  str = "Color Changed";
                });
              },
              icon: Icon(Icons.add),
              iconSize: 40,
            )
          ],
        ),
      ),
    );
  }
}
