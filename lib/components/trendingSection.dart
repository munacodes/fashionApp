import 'package:fashion_app/components/trendingWidgets.dart';
import 'package:flutter/material.dart';

class TrendingSection extends StatefulWidget {
  const TrendingSection({Key? key}) : super(key: key);

  @override
  State<TrendingSection> createState() => _TrendingSectionState();
}

class _TrendingSectionState extends State<TrendingSection> {
  @override
  Widget build(BuildContext context) {
    return const TrendingWidgets();
  }
}
