import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String? title;
  final Function? onPressed;
  final ButtonStyle? style;

  const SecondaryButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed!(),
      child: Text(
        title!,
      ),
    );
  }
}
