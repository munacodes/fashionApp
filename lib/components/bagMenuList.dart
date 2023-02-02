import 'package:flutter/material.dart';

class BagMenuList extends StatefulWidget {
  const BagMenuList({Key? key}) : super(key: key);

  @override
  State<BagMenuList> createState() => _BagMenuListState();
}

final _bagList = [
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

class _BagMenuListState extends State<BagMenuList> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: _bagList
          .map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ))
          .toList(),
      onChanged: (val) {},
    );
  }
}
