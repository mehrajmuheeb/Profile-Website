import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_website/constants/strings.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageController extends GetxController {
  static HomePageController instance = Get.find();

  var isSkillActive = false.obs;
  var isExperienceActive = false.obs;

  final dataKey = GlobalKey();

  onSkillClick() {
    // isSkillActive.value = !isSkillActive.value;
    // isExperienceActive.value = false;
  }
  onExperienceClick() {
    // isExperienceActive.value = !isExperienceActive.value;
    // isSkillActive.value = false;
  }

  onLinkedInClick() async =>
      await canLaunch(linkedInUrl) ? await launch(linkedInUrl) : throw "Couldn't launch";

  onTwitterClick() async =>
      await canLaunch(twitterUrl) ? await launch(twitterUrl) : throw "Couldn't launch";

  onInstagramClick() async =>
      await canLaunch(instagramUrl) ? await launch(instagramUrl) : throw "Couldn't launch";


}