import 'package:flutter/material.dart';

class Mydivider extends StatelessWidget {
  final num white;
  const Mydivider({
    super.key,
    required this.white,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          child: Divider(
            height: 0,
          ),
        ),
        Align(
          child: Divider(
            height: 0,
            endIndent: MediaQuery.of(context).size.width * white,
            color: Colors.indigoAccent,
          ),
        )
      ],
    );
  }
}