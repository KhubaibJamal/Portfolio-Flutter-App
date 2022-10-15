import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerItemWidgt extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPress;

  DrawerItemWidgt(
      {required this.title, required this.icon, required this.onPress});

  Widget build(BuildContext contaxt) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
        size: 28.0,
      ),
      title: Text(
        title,
        style: GoogleFonts.lato(
          fontSize: 28.0,
          color: Colors.white,
        ),
      ),
      onTap: onPress,
    );
  }
}
