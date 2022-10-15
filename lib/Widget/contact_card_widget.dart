import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactCardWidget extends StatelessWidget {
  final String image;
  final String cardTitle;
  ContactCardWidget({required this.image, required this.cardTitle});

  Widget build(BuildContext context) {
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
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            cardTitle,
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
