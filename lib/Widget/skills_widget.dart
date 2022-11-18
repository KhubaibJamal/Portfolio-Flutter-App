import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsWidget extends StatelessWidget {
  final String text;
  SkillsWidget({required this.text});
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0, left: 13.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: const Color(0xFF363636),
        borderRadius: BorderRadius.circular(10.0),
      ),
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
