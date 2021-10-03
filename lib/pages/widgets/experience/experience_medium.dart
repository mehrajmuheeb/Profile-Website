import 'package:flutter/material.dart';
import 'package:tour_website/constants/controllers.dart';
import 'package:tour_website/widgets/bold_text.dart';

import 'experience_card.dart';
import 'helper.dart';

class ExperienceMedium extends StatelessWidget {
  const ExperienceMedium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              BoldText(
                text: "Experience",
                size: 32,),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            key: homePageController.dataKey,
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(child: getExperienceList()[0]),
                    Expanded(child: getExperienceList()[1]),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: getExperienceList()[2]),
                    Expanded(child: getExperienceList()[3]),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
