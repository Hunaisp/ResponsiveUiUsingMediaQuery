import 'package:flutter/material.dart';
import 'package:responsive_using_mediaquery/screen2.dart';
import 'package:responsive_using_mediaquery/screen3.dart';
import 'package:responsive_using_mediaquery/screen4.dart';

import 'screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Screen4(),
    );
  }
}

