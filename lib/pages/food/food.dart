import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../alcohlo/alchohlo.dart';
import '../widgets/elvationbuttom.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _InviteState();
}

class _InviteState extends State<Food> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF090909),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Create a New Event",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Gap(18),
              Stack(
                children: [
                  const SizedBox(
                    child: Divider(
                      height: 3,
                    ),
                  ),
                  Align(
                    child: Divider(
                      height: 3,
                      endIndent: MediaQuery.of(context).size.width * 0.39,
                      color: Colors.indigoAccent,
                    ),
                  )
                ],
              ),
              Gap(26),
              Center(
                child: SvgPicture.asset(
                  "assets/icons/food.svg",
                  width: 140,
                ),
              ),
              Gap(28),
              Text(
                "What will be the food arrangements?",
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Gap(18),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                          width: 1,
                          color:
                              a == 1 ? Color(0xFF76A9FF) : Color(0xFF1C1C1C))),
                  fixedSize: Size(double.maxFinite, 50),
                  backgroundColor:
                      a == 1 ? Color(0xFF292E36) : Color(0xFF1C1C1C),
                ),
                onPressed: () {
                  setState(() {});
                  a = 1;
                },
                child: Row(
                  children: [
                    Text(
                      "Order-in",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Gap(16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                          width: 1,
                          color:
                              a == 2 ? Color(0xFF76A9FF) : Color(0xFF1C1C1C))),
                  fixedSize: Size(double.maxFinite, 50),
                  backgroundColor: Color(0xFF1C1C1C),
                ),
                onPressed: () {
                  setState(() {});
                  a = 2;
                },
                child: Row(
                  children: [
                    Text(
                      "Home cooked food",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Gap(16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      width: 1,
                      color: a == 3 ? Color(0xFF76A9FF) : Color(0xFF1C1C1C),
                    ),
                  ),
                  fixedSize: Size(double.maxFinite, 50),
                  backgroundColor: Color(0xFF1C1C1C),
                ),
                onPressed: () {
                  setState(() {});
                  a = 3;
                },
                child: Row(
                  children: [
                    Text(
                      "Book a caterer",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Gap(16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                          width: 1,
                          color:
                              a == 4 ? Color(0xFF76A9FF) : Color(0xFF1C1C1C))),
                  fixedSize: Size(double.maxFinite, 50),
                  backgroundColor: Color(0xFF1C1C1C),
                ),
                onPressed: () {
                  setState(() {});
                  a = 4;
                },
                child: Row(
                  children: [
                    Text(
                      "Potluck",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Elvationbattom(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Alcohol(),
                    ),
                  );
                },
                text: 'NEXT',
              )
            ],
          ),
        ),
      ),
    );
  }
}
