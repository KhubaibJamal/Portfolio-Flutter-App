import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Pages/contact_page.dart';
import 'package:portfolio/Pages/project_page.dart';
import 'package:portfolio/Pages/skill_page.dart';

import '../Widget/drawer_item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          "Portfolio".toUpperCase(),
          style: GoogleFonts.jua(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Column(
                children: [
                  Text(
                    "< Khubaib />",
                    style: GoogleFonts.cedarvilleCursive(
                      fontSize: 35.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            DrawerItemWidgt(
                title: "Contact",
                icon: Icons.perm_contact_calendar_sharp,
                onPress: () {
                  // close the drawer when item click
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const ContactPage()),
                    ),
                  );
                }),
            DrawerItemWidgt(
                title: "Skills",
                icon: Icons.settings,
                onPress: () {
                  // close the drawer when item click
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const SkillPage()),
                    ),
                  );
                }),
            DrawerItemWidgt(
                title: "Projects",
                icon: Icons.build,
                onPress: () {
                  // close the drawer when item click
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const ProjectPage()),
                    ),
                  );
                }),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(height: 15.0),
          const Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/CV picture.png'),
              radius: 110,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            "Khubaib Jamal\n",
            style: GoogleFonts.lato(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
          Text(
            "Android Developer",
            style: GoogleFonts.lato(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
          const Divider(
            thickness: 3,
            indent: 8.0,
            endIndent: 8.0,
            color: Color(0xFFEE6983),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 8.0, right: 8.0),
              padding: const EdgeInsets.all(8.0),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Text(
                "Self-motivated and a quick learner computer science student who loves to build something new and enjoys challenges",
                style: GoogleFonts.barlow(
                  fontSize: 25,
                  color: Theme.of(context).secondaryHeaderColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
