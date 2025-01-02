import 'package:flutter/material.dart';
import 'package:Nutzz_Momen/convert.dart';

import 'my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nutzz Momen',
      theme: ThemeData(
        primaryColor:  createMaterialColor(Color(0xFF3EC5EA)),
      ),
      home: const MyHomePage(),
    );
  }
}

