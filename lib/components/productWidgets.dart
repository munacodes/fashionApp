import 'package:flutter/material.dart';
import 'componentsExports.dart';

class ProductWidgets extends StatefulWidget {
  const ProductWidgets({Key? key}) : super(key: key);

  @override
  State<ProductWidgets> createState() => _ProductWidgetsState();
}

class _ProductWidgetsState extends State<ProductWidgets> {
  PageController controller = PageController();
  int _curr = 0;

  final List<Widget> _product = <Widget>[];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text('dfghdghhgh'),
          ),
          PageView(
            children: _product,
            scrollDirection: Axis.vertical,
            controller: controller,
            onPageChanged: (num) {
              setState(() {
                _curr = num;
              });
            },
          ),
        ],
      ),
    );
  }
}
