
import 'package:flutter/material.dart';
import 'package:Nutzz_Momen/convert.dart';
import 'package:Nutzz_Momen/grid_section.dart';
import 'package:Nutzz_Momen/logo_section.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa',style: TextStyle(color: Colors.white),), // AppBar başlığı,
                backgroundColor:  createMaterialColor(Color(0xFF3EC5EA)), // AppBar rengini beyaz yapar

      ),
      body: Column(
        children: const <Widget>[
          // Logo Bölümü (1/3 oranında)
          LogoSection(),
          // Grid Bölümü (2/3 oranında)
          GridSection(),
        ],
      ),
    );
  }
}