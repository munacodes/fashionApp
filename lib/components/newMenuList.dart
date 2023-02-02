import 'package:flutter/material.dart';

class NewMenuList extends StatefulWidget {
  const NewMenuList({Key? key}) : super(key: key);

  @override
  State<NewMenuList> createState() => _NewMenuListState();
}

final _newList = [
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

class _NewMenuListState extends State<NewMenuList> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: _newList
          .map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ))
          .toList(),
      onChanged: (val) {},
    );
  }
}
