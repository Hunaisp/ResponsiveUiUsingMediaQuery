import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

//here we are going to channge the gridview crossaxis item count based on land scape and potratite
class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
      final isPotrait = orientation == Orientation.portrait;
      final isMobile = MediaQuery.of(context).size.shortestSide < 600;
      //here the drawer is only display in phones, you can decide through this you can decide which item should be showed on web and phone
      return Scaffold(
        drawer: isMobile ? Drawer() : null,
        body: GridView.count(
          crossAxisCount: isPotrait ? 2 : 3,
          children: List.generate(
              40,
              (index) => Card(
                    color: Colors.orange,
                    child: Center(
                      child: Text('Item $index'),
                    ),
                  )),
        ),
      );
    });
  }
}
