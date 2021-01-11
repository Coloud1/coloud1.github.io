import 'package:coloud_cv/utils/text_styles.dart';
import 'package:flutter/material.dart';

class InformationBlock extends StatelessWidget {
  final String title;
  final Widget widget;

  const InformationBlock({Key key, this.title, this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title",
          style: INTER_MEDIUM.copyWith(fontSize: 30),
        ),
        const SizedBox(
          height: 10,
        ),

        _buildDivider(padding: 0, colors: Colors.grey, height: 1.0),
        const SizedBox(
          height: 10,
        ),
        widget,
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget _buildDivider(
          {double padding = 20.0,
          Color colors = Colors.white,
          double height = 2.0}) =>
      Padding(
        padding: EdgeInsets.only(left: padding),
        child: Divider(
          height: 1,
          color: colors,
          thickness: height,
        ),
      );
}
