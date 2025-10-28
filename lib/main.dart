
import 'package:apps/screens/LoginScreen.dart';
import 'package:apps/screens/Portfolio.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget{
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }

}