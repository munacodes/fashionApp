import 'package:flutter/material.dart';

class AccessoriesMenuList extends StatefulWidget {
  const AccessoriesMenuList({Key? key}) : super(key: key);

  @override
  State<AccessoriesMenuList> createState() => _AccessoriesMenuListState();
}

final _accessoriesList = [
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

class _AccessoriesMenuListState extends State<AccessoriesMenuList> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: _accessoriesList
          .map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ))
          .toList(),
      onChanged: (val) {},
    );
  }
}
