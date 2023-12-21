import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../create_a_new_event/create_a_new_event.dart';
import '../widgets/container_intro.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090909),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hi, Ishita 👋",
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Ellipse 24.png"),
                      ),
                    ),
                    child: const Image(
                      image: AssetImage("assets/images/Ellipse 25.png"),
                    ),
                  )
                ],
              ),
              const Gap(26),
              SizedBox(
                height: 154,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF50586A),
                        Color(0xFF1E2530),
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "No Upcoming House Party",
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Gap(8),
                            Text(
                              "Plan your house party",
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Gap(16),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF76A9FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CreateaNewEvent(),
                                  ),
                                );
                              },
                              child: Text(
                                "CREATE A NEW EVENT ",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          "assets/images/Saly-26 (1).png",
                          width: 120,
                          height: 120,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(24),
              Text(
                "Previous House Parties",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Gap(16),
              const Row(
                children: [
                  CongtainerWidget(
                    image: 'assets/icons/dumoloq.svg',
                    image1: 'assets/icons/cack.svg',
                    text: 'Shravya’s Birthday',
                  ),
                  Gap(16),
                  CongtainerWidget(
                    image: 'assets/icons/dumoloq1.svg',
                    image1: 'assets/icons/yurak.svg',
                    text: 'N&T’s Anniversary',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
