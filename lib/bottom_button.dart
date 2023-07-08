import 'package:flutter/material.dart';
import 'constants.dart';

class Bottombutton extends StatelessWidget {
  final String buttonname;
  final Function()? onTap;
  const Bottombutton({super.key, required this.buttonname, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10),
        color: const Color(0xFFEB1555),
        child: Center(
            child: Text(
          buttonname,
          style: klargebuttonstyle,
        )),
      ),
    );
  }
}
