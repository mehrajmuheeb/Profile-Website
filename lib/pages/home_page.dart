import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:tour_website/constants/controllers.dart';
import 'package:tour_website/constants/style.dart';
import 'package:tour_website/helpers/responsive_layout_widget.dart';
import 'package:tour_website/pages/widgets/experience/experience_medium.dart';
import 'package:tour_website/pages/widgets/experience/experience_section.dart';
import 'package:tour_website/pages/widgets/intro/avatar_widget.dart';
import 'package:tour_website/pages/widgets/experience/experience_large.dart';
import 'package:tour_website/pages/widgets/intro/intro_large.dart';
import 'package:tour_website/pages/widgets/intro/intro_small.dart';
import 'package:tour_website/pages/widgets/skills/skill_large.dart';
import 'package:tour_website/widgets/bold_text.dart';
import 'package:tour_website/widgets/regular_text.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dataKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primary,
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          ResponsiveLayout.isSmallScreen(context)
              ? IntroSmall()
              : IntroWidgetLarge(),
          Container(child: ExperienceSection()),
          Container(
            child: SkillLarge(),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: primary,
                child: InkWell(
                  onTap: () {
                    launch("https://github.com/zubairehman/Portfolio-Demo");
                  },
                  child: RegularText(
                    text: "Inspired from Zubair Rehman",
                    color: skillColor,
                    size: 12,
                  ),
                ),
              ),
              SizedBox(height: 24,)
            ],
          )
        ]),
      ),
    );
  }
}
