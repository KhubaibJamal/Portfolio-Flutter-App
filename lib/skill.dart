import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF262626),
        centerTitle: true,
        title: Text(
          "Skills",
          style: GoogleFonts.lato(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: const Color(0XFFBCB4B4)),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              decorationBox("Flutter"),
              decorationBox("Dart"),
              decorationBox("Firebase"),
            ],
          ),
          Row(
            children: [
              decorationBox("REST API"),
              decorationBox("Node js"),
              decorationBox("C++"),
            ],
          ),
          Row(
            children: [
              decorationBox("JavaScript"),
              decorationBox("Java"),
              decorationBox("Android"),
            ],
          ),
          Row(
            children: [
              decorationBox("Git"),
            ],
          ),
        ],
      ),
    );
  }

  Widget decorationBox(String text) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0, left: 13.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: const Color(0xFF363636),
          borderRadius: BorderRadius.circular(10.0)),
      child: Text(
        text,
        style: GoogleFonts.lato(
          fontSize: 25,
          fontWeight: FontWeight.w800,
          color: const Color(0XFFBCB4B4),
        ),
      ),
    );
  }
}
