import 'package:flutter/material.dart';

class MumbaiMap extends StatefulWidget {
  const MumbaiMap({super.key});

  @override
  State<MumbaiMap> createState() => _MumbaiMapState();
}

class _MumbaiMapState extends State<MumbaiMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Image.asset("images/dinner.png",
            fit: BoxFit.cover,))
    );
  }
}
