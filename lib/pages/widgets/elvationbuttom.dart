import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Elvationbattom extends StatelessWidget {
 final void Function() onPressed;
 final String text;
  const Elvationbattom({
    super.key, required this.onPressed, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(double.maxFinite, 46),
            backgroundColor: Color(0xFF76A9FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            )),
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
