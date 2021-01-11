import 'package:flutter/material.dart';

class ExperienceBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Flutter developer"),
            Text("256 devs, Kropyvnytskyi"),
            Text("Flutter developer on several projects"),

          ],
        ),
        Text('Dec 2019 - Present')
      ],
    );
  }
}
