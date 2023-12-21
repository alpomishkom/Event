import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:house_party_planning/pages/widgets/myTextformFild.dart';

import '../invit/invit.dart';
import '../widgets/elvationbuttom.dart';

class Detelis extends StatefulWidget {
  const Detelis({super.key});

  @override
  State<Detelis> createState() => _DetelisState();
}

class _DetelisState extends State<Detelis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090909),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
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
                      endIndent: MediaQuery.of(context).size.width * 0.65,
                      color: Colors.indigoAccent,
                    ),
                  )
                ],
              ),
              Gap(16),
              const MyTextfilldd(
                topText: "Event Name",
              ),
              const Gap(16),
              MyTextfilldd(
                topText: "Date",
                hintTexte: "DD-MM-YYYY",
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset("assets/icons/calendar.svg"),
                ),
              ),
              const Gap(16),
              MyTextfilldd(
                  topText: "Time",
                  hintTexte: "HH:MM",
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/icons/soat.svg"),
                  )),
              const Gap(16),
              MyTextfilldd(
                topText: "Budget",
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset("assets/icons/tt.svg"),
                ),
              ),
              Spacer(),
              Elvationbattom(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Invite()));
              }, text: 'NEXT',)
            ],
          ),
        ),
      ),
    );
  }
}
