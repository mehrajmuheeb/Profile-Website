import 'package:flutter/material.dart';
import 'package:tour_website/helpers/responsive_layout_widget.dart';
import 'package:tour_website/widgets/bold_text.dart';
import 'package:tour_website/widgets/regular_text.dart';

class ExperienceCard extends StatefulWidget {
  final Experience experience;
  const ExperienceCard({Key? key, required this.experience}) : super(key: key);

  @override
  _ExperienceCardState createState() => _ExperienceCardState(experience);
}

class _ExperienceCardState extends State<ExperienceCard> {
  final Experience experience;

  _ExperienceCardState(this.experience);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: getItemWidth(context, _width),
            height: getItemHeight(context, _width),
            child:

            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BoldText(
                      text: experience.company,
                      weight: FontWeight.bold,
                      size: 16,
                    ),
                    RegularText(text: experience.designation)
                  ],
                ),
              ),
            )
        ),
      ],
    );
  }
}

double getItemWidth(BuildContext context, double _width) {

  if(ResponsiveLayout.isCustomScreen(context))
    return _width/2;
  else if(ResponsiveLayout.isLargeScreen(context))
    return _width/4;
  else
    return _width;
}

double getItemHeight(BuildContext context, double _width) {

  if(ResponsiveLayout.isSmallScreen(context))
    return _width/4;
  else if(ResponsiveLayout.isCustomScreen(context))
    return _width/6;
  else
    return _width/8;

}


class Experience {
  String company;
  String designation;

  Experience(this.company, this.designation);

}
