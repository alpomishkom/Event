import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'divaydir.dart';

class CongtainerWidget extends StatelessWidget {
  final String image;
  final String image1;
  final String text;

  const CongtainerWidget({
    super.key,
    required this.image,
    required this.image1,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.19,
        decoration: BoxDecoration(
            color: const Color(0xFF1C1C1C),
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SvgPicture.asset(image),
                  Positioned(
                    top: 6,
                    left: 6,
                    child: SvgPicture.asset(image1),
                  ),
                ],
              ),
              Gap(8),
              Text(
                text,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Gap(8),
              Text(
                "14-07-2021",
                style: GoogleFonts.montserrat(
                  color: Color(0xFFADADAD),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Gap(8),
              Text(
                "8:00 PM",
                style: GoogleFonts.montserrat(
                  color: Color(0xFFADADAD),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
