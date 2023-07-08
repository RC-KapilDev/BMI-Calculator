import 'package:flutter/material.dart';
import 'constants.dart';

class cardicon extends StatelessWidget {
  final IconData? iconsy;
  final String? name;
  const cardicon({super.key, this.iconsy, this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconsy,
          size: 80,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '$name',
          style: klabeltextStyle,
        ),
      ],
    );
  }
}
