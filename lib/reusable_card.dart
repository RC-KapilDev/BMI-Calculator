import 'package:flutter/material.dart';

class Reusableblock extends StatelessWidget {
  final Color? colour;
  final Widget? Cardchild;
  final Function()? onPress;
  const Reusableblock({super.key, this.colour, this.Cardchild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Cardchild,
      ),
    );
  }
}
