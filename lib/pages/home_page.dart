import 'package:Muheeb_Mehraj/constants/style.dart';
import 'package:Muheeb_Mehraj/helpers/responsive_layout_widget.dart';
import 'package:Muheeb_Mehraj/pages/widgets/experience/experience_section.dart';
import 'package:Muheeb_Mehraj/pages/widgets/intro/intro_large.dart';
import 'package:Muheeb_Mehraj/pages/widgets/intro/intro_small.dart';
import 'package:Muheeb_Mehraj/pages/widgets/skills/skill_large.dart';
import 'package:Muheeb_Mehraj/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
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
