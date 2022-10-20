import 'package:flutter/material.dart';

class SkillLevel extends StatelessWidget {

  final int ability;

  const SkillLevel({
    Key? key,
    required this.ability,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.star, color: (ability >=1) ? Colors.black : Colors.white),
          Icon(Icons.star, color: (ability >=2) ? Colors.black : Colors.white),
          Icon(Icons.star, color: (ability >=3) ? Colors.black : Colors.white),
          Icon(Icons.star, color: (ability >=4) ? Colors.black : Colors.white),
          Icon(Icons.star, color: (ability >=5) ? Colors.black : Colors.white),
        ]
    );
  }
}