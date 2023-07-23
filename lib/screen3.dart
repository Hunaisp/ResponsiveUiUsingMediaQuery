import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    //potrait :- normal mod
    //landscape:- orientation mod
    // you can use orientation widget directly here:- check screen 4
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: Text("Orientation"),
      ),
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? Container(
              color: Colors.blue,
              child: Center(
                child: Text("Portrait"),
              ),
            )
          : Container(
              color: Colors.green,
              child: Center(
                child: Text("Portrait"),
              ),
            ),
    );
  }
}
