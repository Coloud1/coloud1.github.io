import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("\nFirebase Messaging\n"),
        Text("Flutter provider\n"),
        Text("Text Recognize (ML KIT)\n"),
        Text("GIT\n"),
        Text("Flutter BLOC library")
      ],
    );
  }
}
