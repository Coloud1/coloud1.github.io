import 'package:coloud_cv/utils/text_styles.dart';
import 'package:flutter/material.dart';

class InformationBlock extends StatelessWidget {
  final String title;
  final Widget description;

  const InformationBlock({Key key, this.title, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: const Color(0xFFFFFFFF), boxShadow: [
         BoxShadow(
            color: Color(0xFFF2F2F2), blurRadius: 8, offset: Offset(0, 0)),
      ], borderRadius: BorderRadius.all(Radius.circular(12))),
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height / 3,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$title', style: INTER_SEMIBOLD.copyWith(color: Color(0xFF4F4F4F), fontSize: 17),),
            // Text('$description', style: INTER_MEDIUM.copyWith(color: Color(0xFF4F4F4F,), fontSize: 15),),
            description
          ],
        ),
      ),
    );
  }
}
