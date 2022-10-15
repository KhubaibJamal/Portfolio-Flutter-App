import 'package:flutter/material.dart';
import 'package:portfolio/Pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KhubaibFolio',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF262626),
        primaryColor: const Color(0xFF1E1E1E),
        secondaryHeaderColor: const Color(0XFFBCB4B4),
      ),
      home: const HomePage(),
    );
  }
}
