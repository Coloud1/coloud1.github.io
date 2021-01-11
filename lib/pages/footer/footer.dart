import 'package:coloud_cv/utils/text_styles.dart';
import 'package:flutter/material.dart';

class FooterBloc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
        child: Padding(
          padding:  EdgeInsets.only(top: 20, left: MediaQuery.of(context).size.width / 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("The site is written using the Flutter SDK", style: INTER_SEMIBOLD.copyWith(color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
}
