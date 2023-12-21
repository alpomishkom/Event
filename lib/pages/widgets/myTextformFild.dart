import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextfilldd extends StatelessWidget {
  final String? topText;
  final String? hintTexte;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const MyTextfilldd({
    super.key,
    this.hintTexte,
    this.prefixIcon,
    this.suffixIcon,
    this.topText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topText ?? '',
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w700,
              color: CupertinoColors.white,
              fontSize: 14),
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
            //  label: Text('Username'),
            hintText: hintTexte,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintStyle: TextStyle(color: Color(0xFF787878)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
