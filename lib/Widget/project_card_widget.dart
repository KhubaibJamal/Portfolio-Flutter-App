import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectCardWidget extends StatelessWidget {
  final String projectTitle;
  final String projectDescription;
  final String image;

  ProjectCardWidget(
      {Key? key,
      required this.projectTitle,
      required this.projectDescription,
      required this.image});

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: const Color(0xFF363636),
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(image),
                    width: 50,
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    projectTitle,
                    style: GoogleFonts.jua(
                      fontSize: 30.0,
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
                  )
                ],
              ),
              Text(
                projectDescription,
                style: GoogleFonts.jua(
                  fontSize: 25.0,
                  color: Theme.of(context).secondaryHeaderColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
