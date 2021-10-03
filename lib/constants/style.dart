import 'package:flutter/material.dart';

const primary =Color(0xFFF7F8FA);
const bodyTextColor = Color(0xFF85819C);
const skillColor = Color.fromRGBO(133, 129, 156, 1);
const skillChipColor =  Color.fromRGBO(220, 220, 220, 1);

ButtonStyle homeButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(primary),
    shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
    ))
);