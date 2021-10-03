import 'package:flutter/material.dart';
import 'package:tour_website/helpers/responsive_layout_widget.dart';
import 'package:tour_website/widgets/large_screen_layout.dart';
import 'package:tour_website/widgets/small_screen_layout.dart';
import 'package:tour_website/widgets/top_nav_bar.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getNavBar(context),
      body: ResponsiveLayout(largeScreen: LargeScreen(), smallScreen: SmallScreen(),),
    );
  }
}
