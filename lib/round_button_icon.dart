import 'package:flutter/material.dart';

class RoundButtonIcon extends StatelessWidget {
  final IconData? iconname;
  final Function()? onpressed;

  const RoundButtonIcon(
      {super.key, required this.iconname, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressed,
      shape: const CircleBorder(),
      elevation: 6,
      fillColor: const Color(0xFF4C4F5E),
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
      child: Icon(iconname),
    );
  }
}
