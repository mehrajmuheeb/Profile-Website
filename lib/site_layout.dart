import 'package:Muheeb_Mehraj/widgets/large_screen_layout.dart';
import 'package:Muheeb_Mehraj/widgets/small_screen_layout.dart';
import 'package:Muheeb_Mehraj/widgets/top_nav_bar.dart';
import 'package:flutter/material.dart';

import 'helpers/responsive_layout_widget.dart';

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
