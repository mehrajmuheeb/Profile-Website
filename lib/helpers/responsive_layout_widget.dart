import 'package:flutter/material.dart';

//Standard screen size breakpoints currently used.
const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;

class ResponsiveLayout extends StatelessWidget {

  //The layouts will be wrapped with these screen types as per the Width of the
  //screen at that particular point
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;
  final Widget? customScreen;

  const ResponsiveLayout(
      {Key? key,
      required this.largeScreen,
      this.mediumScreen,
      this.smallScreen,
      this.customScreen})
      : super(key: key);

  //Methods that will calculate the Screen width at runtime and return a
  //suitable Widget size as per the breakpoints defined above.

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize
          && MediaQuery.of(context).size.width < largeScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  static bool isCustomScreen(BuildContext context) =>
      MediaQuery.of(context).size.width <= customScreenSize &&
          MediaQuery.of(context).size.width >= mediumScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double _width = constraints.maxWidth;

      if(_width > largeScreenSize)
        return largeScreen;
      else if(_width >= mediumScreenSize && _width < largeScreenSize)
        return mediumScreen ?? largeScreen;
      else
        return smallScreen ?? largeScreen;
    });
  }
}
