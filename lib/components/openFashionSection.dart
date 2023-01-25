import 'package:fashion_app/components/componentsExports.dart';
import 'package:flutter/material.dart';

class OpenFashionSection extends StatefulWidget {
  const OpenFashionSection({Key? key}) : super(key: key);

  @override
  State<OpenFashionSection> createState() => _OpenFashionSectionState();
}

class _OpenFashionSectionState extends State<OpenFashionSection> {
  @override
  Widget build(BuildContext context) {
    return const OpenFashionWidgets();
  }
}
