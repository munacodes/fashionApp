import 'package:flutter/material.dart';
import 'package:fashion_app/components/componentsExports.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildAppbarWidgets(),
        const BannerSection(),
        const BrandSection(),
      ],
    );
  }

  Widget _fghfggfg() {
    return Container(
      decoration: BoxDecoration(
          // TODO: Trying to Stack the header section
          ),
    );
  }

  Widget _buildAppbarWidgets() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        GestureDetector(
          onTap: () {},
          child: Text('BELLEMODA'),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_bag_outlined),
        ),
      ],
    );
  }
}
