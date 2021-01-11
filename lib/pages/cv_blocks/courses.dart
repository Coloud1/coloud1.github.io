import 'package:coloud_cv/utils/text_styles.dart';
import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
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
              Text('Dart/Flutter course', style: INTER_MEDIUM.copyWith(fontSize: 15),),
              Text('256 devs'),
              Text('Dart courses for beginner developers using the Flutter SDK'),

            ],
          ),
        ),
        Text('Oct 2019 - Dec 2019')
      ],
    );
  }
}
