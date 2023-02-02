import 'package:flutter/material.dart';

class ApparelMenuList extends StatefulWidget {
  const ApparelMenuList({Key? key}) : super(key: key);

  @override
  State<ApparelMenuList> createState() => _ApparelMenuListState();
}

class _ApparelMenuListState extends State<ApparelMenuList> {
  final _apparelList = [
    'Outer',
    'Dress',
    'Blouse/Shirt',
    'T-Shirt',
    'Knitwear',
    'Skirt',
    'Pants',
    'Denim',
    'Kids',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: _apparelList
          .map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ))
          .toList(),
      onChanged: (val) {},
    );
  }
}
