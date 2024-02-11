import 'dart:async';
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/sec');
    });
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Image.asset('asset/img/logo.png'),
        ),
      ),
    );
  }
}
