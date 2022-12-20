import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/utilsExports.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function? onPressed;
  final bool loading;
  final Widget? icon;

  const PrimaryButton({
    Key? key,
    required this.title,
    this.onPressed,
    this.loading = false,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11.50),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          AppCustomColors.light,
        ),
      ),
      onPressed: () => onPressed!(),
      child: Text(
        title,
        style: lightTextTheme.button,
      ),
    );
  }
}
