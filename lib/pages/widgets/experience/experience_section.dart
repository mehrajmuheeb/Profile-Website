import 'package:Muheeb_Mehraj/helpers/responsive_layout_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'experience_large.dart';
import 'experience_medium.dart';
import 'experience_small.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(ResponsiveLayout.isSmallScreen(context))
      return ExperienceSmall();
    else if(ResponsiveLayout.isCustomScreen(context))
      return ExperienceMedium();
    else
      return ExperienceLarge();
  }
}
