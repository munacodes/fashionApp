import 'package:flutter/material.dart';
import 'package:fashion_app/components/componentsExports.dart';

class NewArrivalSection extends StatefulWidget {
  const NewArrivalSection({Key? key}) : super(key: key);

  @override
  State<NewArrivalSection> createState() => _NewArrivalSectionState();
}

class _NewArrivalSectionState extends State<NewArrivalSection> {
  @override
  Widget build(BuildContext context) {
    return const NewArrivalWidgets();
  }
}
