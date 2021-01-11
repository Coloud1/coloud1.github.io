import 'package:coloud_cv/utils/text_styles.dart';
import 'package:flutter/material.dart';

class ExperienceBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Flutter developer", style: INTER_MEDIUM.copyWith(fontSize: 15),),
              Text("256 devs, Kropyvnytskyi"),
              Text("Flutter developer on several projects"),

            ],
          ),
        ),
        Text('Dec 2019 - Present')
      ],
    );
  }
}
