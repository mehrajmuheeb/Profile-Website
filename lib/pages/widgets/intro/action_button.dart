import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_website/constants/controllers.dart';
import 'package:tour_website/constants/style.dart';
import 'package:tour_website/widgets/bold_text.dart';
import 'package:tour_website/widgets/custom_button.dart';

class ActionButtons extends StatefulWidget {
  const ActionButtons({Key? key}) : super(key: key);

  @override
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: CustomButton(
              onClick: homePageController.onExperienceClick,
              text: "Experience",
              isActive: homePageController.isExperienceActive
            ),
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(
            child: CustomButton(
              onClick: homePageController.onSkillClick,
              text: "Skills",
              isActive: homePageController.isSkillActive,
            ),
          )
        ],
      ),
    );
  }
}
