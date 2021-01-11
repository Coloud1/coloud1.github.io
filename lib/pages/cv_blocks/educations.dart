import 'package:coloud_cv/utils/text_styles.dart';
import 'package:flutter/material.dart';

class Educations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Bachelor", style: INTER_MEDIUM.copyWith(fontSize: 15),),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                  "Central Ukrainian National Technical University, Systems Engineering"),
            ),
            Text("2015-2019"),
          ],
        ),
        Text("\nMaster", style: INTER_MEDIUM.copyWith(fontSize: 15),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                  "Central Ukrainian National Technical University, Automation and computer-integrated technologies"),
            ),
            Text("2019-2020"),
          ],
        )
      ],
    );
  }
}
