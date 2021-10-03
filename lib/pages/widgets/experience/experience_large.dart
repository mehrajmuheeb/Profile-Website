import 'package:Muheeb_Mehraj/constants/controllers.dart';
import 'package:Muheeb_Mehraj/widgets/bold_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'experience_card.dart';
import 'helper.dart';

class ExperienceLarge extends StatelessWidget {
  const ExperienceLarge({Key? key}) : super(key: key);

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
            margin: EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(child: getExperienceList()[0]),
                Expanded(child: getExperienceList()[1]),
                Expanded(child: getExperienceList()[2]),
                Expanded(child: getExperienceList()[3]),
              ],
              key: homePageController.dataKey,
            ),
          ),
        ],
      ),
    );
  }
}
