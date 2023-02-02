import 'package:flutter/material.dart';

class BeautyMenuList extends StatefulWidget {
  const BeautyMenuList({Key? key}) : super(key: key);

  @override
  State<BeautyMenuList> createState() => _BeautyMenuListState();
}

final _beautyList = [
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

class _BeautyMenuListState extends State<BeautyMenuList> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: _beautyList
          .map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ))
          .toList(),
      onChanged: (val) {},
    );
  }
}
