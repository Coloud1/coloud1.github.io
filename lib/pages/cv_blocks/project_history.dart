import 'package:flutter/material.dart';

class ProjectHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("\nPMGGroup - online store application for ordering cosmetics\n"),
        Text("Carways - auto auction app\n"),
        Text("Местный - unified discount program and unified local business network.\n")
      ],
    );
  }
}
