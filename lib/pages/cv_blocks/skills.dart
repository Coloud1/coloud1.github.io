import 'package:coloud_cv/utils/text_styles.dart';
import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSkills("Firebase Messaging", index: 5),
        _buildSkills("Text Recognize (ML KIT)", index: 4),
        _buildSkills("GIT", index: 5),
        _buildSkills("Flutter BLOC library", index: 3),
        _buildSkills("Dart", index: 7),
        _buildSkills("Flutter", index: 6),
        _buildSkills("Flutter provider", index: 7),
      ],
    );
  }

  Widget _buildSkills(String skill, {int index = 1}) => Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: Text(
                  "$skill",
                  style: INTER_MEDIUM.copyWith(fontSize: 15),
                )),
            Flexible(
              flex: 1,
              child: Stack(
                children: [
                  Container(
                    height: 10,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  Container(
                    height: 10,
                    width: 10.0 * index,
                    decoration: BoxDecoration(
                        color: Color(0xFF4c4c4c),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ],
              ),
            ),
            Flexible(child: Container())
          ],
        ),
      );
}
