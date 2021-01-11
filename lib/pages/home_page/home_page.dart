import 'package:coloud_cv/pages/cv_blocks/courses.dart';
import 'package:coloud_cv/pages/cv_blocks/educations.dart';
import 'package:coloud_cv/pages/cv_blocks/experiense.dart';
import 'package:coloud_cv/pages/cv_blocks/languages.dart';
import 'package:coloud_cv/pages/cv_blocks/skills.dart';
import 'package:coloud_cv/utils/infromation_block.dart';
import 'package:coloud_cv/utils/text_styles.dart';
import 'package:coloud_cv/utils/url_launcher.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: LayoutBuilder(
          builder:(context, constraints) {
            print(constraints.maxWidth);

            return Row(children: [
             if(constraints.maxWidth > 550) Expanded(flex: 1, child: _buildLeftBlock(context)),
              Expanded(flex: 4, child: _buildRightBlock(context)),
            ]);
          }
        ),
      ),
    );
  }

  Widget _buildLeftBlock(context){
    return  Container(
      height: MediaQuery.of(context).size.height,
      color: const Color(0xFF414953),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar.jpg"),
                  backgroundColor: Colors.transparent,
                  maxRadius: 75,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  "Flutter Junior Developer",
                  style:
                  INTER_THIN.copyWith(color: Colors.white, fontSize: 23),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Personal",
                  style: INTER_MEDIUM.copyWith(
                      color: Colors.white, fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              _buildDivider(),
              const SizedBox(
                height: 20,
              ),
              _buildPersonalBlock(),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Languages",
                  style: INTER_MEDIUM.copyWith(
                      color: Colors.white, fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              _buildDivider(),
              const SizedBox(
                height: 20,
              ),
              _buildLanguages(),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "LinkedIn (tap or scan me)",
                  style: INTER_MEDIUM.copyWith(
                    color: Colors.white, fontSize: 16,),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  launchUrl("https://www.linkedin.com/in/ivan-modlo-3a8903184/");
                },

                child: Center(
                    child: Image.asset(
                      "assets/images/qr-code.gif",
                      width: 150,
                      height: 150,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPersonalBlock() => Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPersonalBlockWidget("Name", "Ivan Modlo"),
            _buildPersonalBlockWidget("Address", "Kropyvnytskiy"),
            _buildPersonalBlockWidget("Email", "coloud.coloud@gmail.com"),
          ],
        ),
      );

  Widget _buildLanguages() => Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPersonalBlockWidget("English", "Pre-intermediate"),
            _buildPersonalBlockWidget("Українська", "Native"),
            _buildPersonalBlockWidget("Русский", "Native"),
          ],
        ),
      );

  Widget _buildRightBlock(context) => Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.transparent,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, top: 30, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ivan Modlo",
                  style: INTER_SEMIBOLD.copyWith(fontSize: 35),
                ),
                const SizedBox(
                  height: 10,
                ),
                _buildDivider(padding: 0, colors: Colors.grey, height: 1.0),
                const SizedBox(
                  height: 15,
                ),
                _buildAbout(),
                const SizedBox(
                  height: 15,
                ),
                InformationBlock(title: "Work experience", widget: ExperienceBlock(),),
                InformationBlock(title: "Educations", widget: Educations(),),
                InformationBlock(title: "Languages", widget: LanguagesBlock(),),
                InformationBlock(title: "Skills", widget: Skills(),),
                InformationBlock(title: "Courses", widget: Courses(),),

              ],
            ),
          ),
        ),
      );

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

  Widget _buildPersonalBlockWidget(String firstField, String secondField) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$firstField",
            style: INTER_REGULAR.copyWith(color: Colors.white, fontSize: 13),
          ),
          Text(
            "$secondField",
            style: INTER_REGULAR.copyWith(color: Colors.white, fontSize: 13),
          ),
          const SizedBox(height: 10),
        ],
      );

  Widget _buildAbout() => Text(
        "I am Junior Flutter developer. I am currently working on a project for auto auctions. "
        "In my portfolio there are 2 released projects in the AppStore and PlayMarket, asa well "
        "as 1 project that should be released in the near future. Able to work alone, as well "
        "as in a team with strong developers.",
        style: INTER_REGULAR.copyWith(fontSize: 15, color: Color(0xFF4c4c4c)),
      );
}
