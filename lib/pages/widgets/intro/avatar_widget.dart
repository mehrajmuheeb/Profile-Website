import 'package:flutter/material.dart';

class AvatarImage extends StatefulWidget {
  const AvatarImage({Key? key}) : super(key: key);

  @override
  _AvatarImageState createState() => _AvatarImageState();
}

class _AvatarImageState extends State<AvatarImage> {
  bool isChanged = false;

  changeImage() {
    setState(() {
      isChanged = !isChanged;
    });
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: InkWell(
            onTap: () {
              changeImage();
            },
            child: AnimatedSwitcher(
                duration: Duration(milliseconds: 500),
                switchInCurve: Curves.elasticOut,
                transitionBuilder:
                    (Widget mChild, Animation<double> animation) {
                  return ScaleTransition(
                    scale: animation,
                    child: mChild,
                  );
                },
                child: !isChanged
                    ? Image.asset(
                        "assets/images/avatar.png",
                        width: _width,
                        height: _width,
                        key: ValueKey(1),
                      )
                    : Image.asset(
                        "assets/images/avatar_welcome.png",
                        width: _width,
                        height: _width,
                        key: ValueKey(2),
                      )),
          ),
        ),
      ),
    );
  }
}
