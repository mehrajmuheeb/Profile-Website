import 'package:Muheeb_Mehraj/constants/controllers.dart';
import 'package:Muheeb_Mehraj/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bold_text.dart';

class CustomButton extends StatefulWidget {

  final String text;
  final Color? color;
  final double? corner;
  final RxBool isActive;
  final VoidCallback onClick;


  const CustomButton({Key? key, required this.text, this.color, this.corner, required this.isActive, required this.onClick}) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState(text, color, corner, this.isActive, this.onClick);
}

class _CustomButtonState extends State<CustomButton> {
  final String text;
  final Color? color;
  final double? corner;
  final RxBool isActive;
  final VoidCallback onClick;

  _CustomButtonState(this.text, this.color, this.corner, this.isActive, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Obx(() =>

      ElevatedButton(
      onPressed: () {
        onClick();
        Scrollable.ensureVisible(homePageController.dataKey.currentContext ?? context);
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color ?? primary),
          shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ))
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: BoldText(
          text: text,
          color: isActive.value
              ? Colors.orange
              : Colors.black,
        ),
      ),
    ));
  }
}
