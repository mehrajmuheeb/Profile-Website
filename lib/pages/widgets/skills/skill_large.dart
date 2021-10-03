import 'package:Muheeb_Mehraj/constants/style.dart';
import 'package:Muheeb_Mehraj/widgets/bold_text.dart';
import 'package:flutter/material.dart';

class SkillLarge extends StatelessWidget {
  const SkillLarge({Key? key}) : super(key: key);

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
                text: "Skills",
                size: 32,),
            ],
          ),
          Wrap(
              children: _getSkillWidget()
          ),
        ],
      ),
    );
  }

  List<Widget> _getSkillWidget() {
    var skills = ["Kotlin", "Java", "Dagger2", "Jetpack", "Data Binding", "MVVM",
      "Leadership", "Quirky", "Flutter", "Communication", "Documentation", "blah..", "blah..", "blah.."];
    var skillList = <Widget>[];
    for(var skill in skills) {
      skillList.add(
          Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 8.0),
            child: Chip(
              backgroundColor: skillChipColor,
              label: BoldText(text: skill, color: skillColor, size: 18,),
              elevation: 3,
              padding: const EdgeInsets.all(8),
            ),
          )
      );
    }
    return skillList;
  }

}
