import 'package:flutter/material.dart';
import 'package:tour_website/constants/controllers.dart';
import 'package:tour_website/widgets/bold_text.dart';

import 'helper.dart';

class ExperienceSmall extends StatelessWidget {
  const ExperienceSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50, horizontal: 40),
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
            child: Column(
              children: getExperienceList(),
              key: homePageController.dataKey,
            ),
          ),
        ],
      ),
    );
  }
}
