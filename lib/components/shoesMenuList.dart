import 'package:flutter/material.dart';

class ShoesMenuList extends StatefulWidget {
  const ShoesMenuList({Key? key}) : super(key: key);

  @override
  State<ShoesMenuList> createState() => _ShoesMenuListState();
}

final _shoesList = [
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

class _ShoesMenuListState extends State<ShoesMenuList> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: _shoesList
          .map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ))
          .toList(),
      onChanged: (val) {},
    );
  }
}
