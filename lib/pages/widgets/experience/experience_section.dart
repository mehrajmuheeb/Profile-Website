import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_website/helpers/responsive_layout_widget.dart';
import 'package:tour_website/pages/widgets/experience/experience_large.dart';
import 'package:tour_website/pages/widgets/experience/experience_medium.dart';
import 'package:tour_website/pages/widgets/experience/experience_small.dart';

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
