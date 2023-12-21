import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../eventdetalles/eventdetalles.dart';
import '../widgets/containercread.dart';
import '../widgets/elvationbuttom.dart';

class GuesList extends StatefulWidget {
  const GuesList({Key? key}) : super(key: key);

  @override
  State<GuesList> createState() => _CreateaNewEventState();
}

class _CreateaNewEventState extends State<GuesList> {
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
                      endIndent: MediaQuery.of(context).size.width * 0.7,
                      color: Colors.indigoAccent,
                    ),
                  )
                ],
              ),
              const Gap(16),
              Text(
                "What is the occasion?",
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Gap(16),
              SizedBox(
                height: 400,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return ContainerCreat(
                      svg: 'assets/icons/${svg.elementAt(index)}.svg',
                      text: '${text.elementAt(index)}',
                      text1: "${text1.elementAt(index)}",
                    );
                  },
                  itemCount: 3,
                ),
              ),
              Spacer(),
              Elvationbattom(
                text: 'NEXT',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Detelis(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

List svg = ["smaill", "medium", "largo"];
List text = [
  "Small",
  "Medium",
  "Large",
];
List text1 = [
  "(4-20 guests)",
  "(20-60 guests)",
  "(60+ guests)",
];
