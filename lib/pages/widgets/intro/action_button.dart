import 'package:Muheeb_Mehraj/constants/controllers.dart';
import 'package:Muheeb_Mehraj/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
