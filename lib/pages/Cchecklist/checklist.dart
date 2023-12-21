import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class BirthdayPlanPage extends StatefulWidget {
  const BirthdayPlanPage({Key? key}) : super(key: key);

  @override
  State<BirthdayPlanPage> createState() => _BirthdayPlanPageState();
}

class _BirthdayPlanPageState extends State<BirthdayPlanPage> {
  int todo = 5;
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF090909),
      body: SafeArea(
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
                  "Checklist",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sara’s Birthday Bash",
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "10 Days to go",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("$a"),
                      Text(
                        'Done',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${todo}"),
                      Text(
                        'To Do',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            Gap(16),
            Column(
              children: [
                MyCheckboxListTile(
                  titlee: 'Create an e-invite',
                  subtitle: 'Tap to create an e-invite ',
                  todo: todo,
                  done: a,
                  onChanged: (bool value) {
                    updateCounts(value);
                  },
                ),
                Gap(16),
                MyCheckboxListTile(
                  titlee: 'Invite guests',
                  subtitle: 'Tap to invite guests',
                  todo: todo,
                  done: a,
                  onChanged: (bool value) {
                    updateCounts(value);
                  },
                ),
                Gap(16),
                MyCheckboxListTile(
                  titlee: 'Hire a decorator',
                  subtitle: 'Tap to view vendors ',
                  todo: todo,
                  done: a,
                  onChanged: (bool value) {
                    updateCounts(value);
                  },
                ),
                Gap(16),
                MyCheckboxListTile(
                  titlee: 'Rent Board Games',
                  subtitle: 'Tap to view vendors ',
                  todo: todo,
                  done: a,
                  onChanged: (bool value) {
                    updateCounts(value);
                  },
                ),
                Gap(16),
                MyCheckboxListTile(
                  titlee: 'Order food',
                  todo: todo,
                  done: a,
                  onChanged: (bool value) {
                    updateCounts(value);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void updateCounts(bool value) {
    setState(() {
      if (value) {
        todo--;
        a++;
      } else {
        todo++;
        a--;
      }
    });
  }
}

class MyCheckboxListTile extends StatefulWidget {
  final String? titlee;
  final String? subtitle;
  final int? todo;
  final int? done;
  final void Function(bool) onChanged;

  const MyCheckboxListTile({
    Key? key,
    this.titlee,
    this.subtitle,
    this.todo,
    this.done,
    required this.onChanged,
  }) : super(key: key);

  @override
  _MyCheckboxListTileState createState() => _MyCheckboxListTileState();
}

class _MyCheckboxListTileState extends State<MyCheckboxListTile> {
  bool ischeckedd = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: CheckboxListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        tileColor: const Color(0xFF1C1C1C),
        title: Text(
          widget.titlee!,
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        subtitle: widget.subtitle == null
            ? null
            : Text(
                widget.subtitle!,
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
        value: ischeckedd,
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: Colors.white38,
        onChanged: (bool? value) {
          setState(() {
            ischeckedd = value!;
          });
          widget.onChanged(value!);
        },
      ),
    );
  }
}
