import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerCreat extends StatefulWidget {
  final String text;
  final String? text1;
  final String svg;

  const ContainerCreat({
    Key? key,
    required this.svg,
    required this.text,
    this.text1,
  }) : super(key: key);

  @override
  State<ContainerCreat> createState() => _ContainerCreatState();
}

class _ContainerCreatState extends State<ContainerCreat> {
  bool a = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          a = !a;
        });
      },
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xFF1C1C1C),
            border: Border.all(
                width: 1,
                color: a == true ? Color(0xFFD898FF) : Color(0xFF1C1C1C))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(widget.svg),
            const Gap(10),
            Text(
              widget.text,
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Gap(2),
            Text(
              widget.text1 ?? " ",
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
