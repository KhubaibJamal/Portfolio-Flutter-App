import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widget/contact_card_widget.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF262626),
        centerTitle: true,
        title: Text(
          "Contact",
          style: GoogleFonts.lato(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: const Color(0XFFBCB4B4)),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              ContactCardWidget(
                  image: 'assets/phone.png', cardTitle: "+92 333-2986103"),
              ContactCardWidget(
                  image: 'assets/email.png',
                  cardTitle: "khubaib.j18@gmail.com"),
              ContactCardWidget(
                  image: 'assets/github.png', cardTitle: "KhubaibJamal"),
              ContactCardWidget(
                  image: 'assets/LinkedIn.png', cardTitle: "khubaib-jamal"),
              ContactCardWidget(
                  image: 'assets/location.png', cardTitle: "Karachi, Pakistan"),
            ],
          ),
        ),
      ),
    );
  }
}
