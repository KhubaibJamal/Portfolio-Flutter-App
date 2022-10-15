import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Widget/project_card_widget.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF262626),
        centerTitle: true,
        title: Text(
          "Projects",
          style: GoogleFonts.lato(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: const Color(0XFFBCB4B4)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProjectCardWidget(
              projectTitle: "Note Taking App",
              projectDescription:
                  "Flutter Note taking app using firebase as a backend",
              image: 'assets/Note.png',
            ),
            ProjectCardWidget(
              projectTitle: "Login SignUp page",
              projectDescription:
                  "A simple Ui for login & sign-up page with email and password also google-sign-in",
              image: 'assets/login.png',
            ),
            ProjectCardWidget(
              projectTitle: "Tiktok UI",
              projectDescription: "Simple Tiktok Ui with camera",
              image: 'assets/tiktok.png',
            ),
            ProjectCardWidget(
              projectTitle: "Xylophone App",
              projectDescription:
                  "Xylophone musical instrument in which you play music",
              image: 'assets/xylophone.jpg',
            ),
            ProjectCardWidget(
              projectTitle: "BMI Calculator",
              projectDescription: "BMI calculator which calculate your BMI ",
              image: 'assets/Calculator.png',
            ),
            ProjectCardWidget(
              projectTitle: "WhatsApp UI",
              projectDescription: "A Simple WhatsApp UI ",
              image: 'assets/whatsapp.png',
            ),
            ProjectCardWidget(
              projectTitle: "Food delivery UI",
              projectDescription: "Food delivery app UI using emojis ",
              image: 'assets/food.png',
            ),
            ProjectCardWidget(
              projectTitle: "Calculator",
              projectDescription: "Calculator UI with full functionality",
              image: 'assets/Calculator.png',
            ),
            ProjectCardWidget(
              projectTitle: "Clock App",
              projectDescription:
                  "Flutter clock and stopwatch with dark and light mode",
              image: 'assets/clock.png',
            ),
          ],
        ),
      ),
    );
  }
}
