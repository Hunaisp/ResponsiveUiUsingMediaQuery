import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  //below function will return true if the condition is true
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: Text(isDesktop(context) == true ? "DeskTop" : 'Mobile'),
      ),
      body: Row(
        children: [
          if (isDesktop(context))
            Container(
              width: 200,
              color: Colors.blue,
              child: Center(
                child: Text("SideBar"),
              ),
            ),
          Expanded(
            child: Container(
              color: Colors.red,
              child: Center(
                child: Text("Content"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
