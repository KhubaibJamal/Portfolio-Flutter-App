import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: SafeArea(
        child: Column(
          children: [
            bottomCard(image: 'assets/phone.png', title: "+92 333-2986103"),
            bottomCard(
                image: 'assets/email.png', title: "khubaib.j18@gmail.com"),
            bottomCard(image: 'assets/github.png', title: "KhubaibJamal"),
            bottomCard(
                image: 'assets/location.png', title: "Karachi, Pakistan"),
          ],
        ),
      ),
    );
  }

  Widget bottomCard({required String image, required String title}) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      height: 90,
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Card(
            color: const Color(0xFF1E1E1E),
            child: CircleAvatar(
              backgroundColor: const Color(0xFF363636),
              radius: 30,
              child: Image(
                image: AssetImage(image),
                color: const Color(0XFFBCB4B4),
                width: 30,
              ),
              // Icon(
              //   leadingIcon,
              //   color: const Color(0XFFBCB4B4),
              //   size: 30,
              // ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: GoogleFonts.lato(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color(0XFFBCB4B4),
            ),
          )
        ],
      ),
    );
  }
}
