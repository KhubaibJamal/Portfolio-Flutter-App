import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/skill.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 250,
              child: Column(
                children: [
                  const Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/CV picture.png'),
                      radius: 110,
                    ),
                  ),
                  Text(
                    "< Khubaib Jamal />",
                    style: GoogleFonts.lato(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 3,
              indent: 8.0,
              endIndent: 8.0,
              color: Color(0xFFEE6983),
            ),
            Container(
              margin: const EdgeInsets.only(left: 8.0, right: 8.0),
              padding: const EdgeInsets.all(8.0),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(15.0),
                // border: Border.all(
                //   color: const Color(0xFFFBF8BE),
                //   width: 5,
                // ),
              ),
              child: Text(
                "Self-motivated and a quick learner computer science student who loves to build something new and enjoys challenges",
                style: GoogleFonts.barlow(
                  fontSize: 25,
                  color: const Color(0XFFBCB4B4),
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Divider(
              thickness: 3,
              indent: 8.0,
              endIndent: 8.0,
              color: Color(0xFFEE6983),
            ),
            bottomContainer(
                title: "Contact",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactPage(),
                    ),
                  );
                }),
            const Divider(
              thickness: 3,
              indent: 8.0,
              endIndent: 8.0,
              color: Color(0xFFEE6983),
            ),
            bottomContainer(
                title: "Skills",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SkillPage(),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }

  Widget bottomContainer({required String title, required Function onTap}) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: const EdgeInsets.only(left: 8.0, right: 8.0),
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.lato(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: const Color(0XFFBCB4B4)),
          ),
        ),
      ),
    );
  }
}
