import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widget/skills_widget.dart';

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
              SkillsWidget(text: "Flutter"),
              SkillsWidget(text: "Dart"),
              SkillsWidget(text: "Firebase"),
            ],
          ),
          Row(
            children: [
              SkillsWidget(text: "REST API"),
              SkillsWidget(text: "Node js"),
              SkillsWidget(text: "C++"),
            ],
          ),
          Row(
            children: [
              SkillsWidget(text: "JavaScript"),
              SkillsWidget(text: "Java"),
              SkillsWidget(text: "Android"),
            ],
          ),
          Row(
            children: [
              SkillsWidget(text: "Git"),
            ],
          ),
        ],
      ),
    );
  }
}
