import 'package:flutter/material.dart';

class LanguagesBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text("English: Pre-intermediate"),
        Text("Українська: Native"),
        Text("Русский: Native")

      ],
    );
  }
}
