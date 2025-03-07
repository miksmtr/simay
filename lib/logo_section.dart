import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        alignment: Alignment.center,
        child: Image.asset('assets/banner.jpg', fit: BoxFit.cover),
// Logo dosyanızın yolu
      ),
    );
  }
}
