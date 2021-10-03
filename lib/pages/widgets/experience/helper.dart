import 'package:flutter/cupertino.dart';
import 'experience_card.dart';

List<Widget> getExperienceList() {
  List<ExperienceCard> cards = [];
  List<String> company = [
    "NMG Technologies Pvt Ltd",
    "E-Resolute Fintech Services",
    "P&G Enterprise Solution",
    "Business View India Pvt Ltd"
  ];
  List<String> designation = [
    "Team Lead",
    "Android Developer",
    "Android Developer",
    "Android Developer"
  ];

  for(var i = 0; i < company.length; i++) {
    cards.add(ExperienceCard(experience: Experience(
        company[i],
        designation[i]
    )));
  }

  return cards;
}