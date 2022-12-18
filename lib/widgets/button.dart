import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
        backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
      ),
      onPressed: () {},
      child: Text(
        title,
      ),
    );
  }
}
