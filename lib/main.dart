import 'package:flutter/material.dart';
import 'package:simay/convert.dart';

import 'my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simay',
      theme: ThemeData(
        primaryColor:  createMaterialColor(Color(0xFF3EC5EA)),
      ),
      home: const MyHomePage(),
    );
  }
}

