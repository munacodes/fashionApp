import 'package:flutter/material.dart';

class AllTabbarWidgets extends StatefulWidget {
  const AllTabbarWidgets({Key? key}) : super(key: key);

  @override
  State<AllTabbarWidgets> createState() => _AllTabbarWidgetsState();
}

class _AllTabbarWidgetsState extends State<AllTabbarWidgets> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Rectangle 325 (3).png'),
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('New'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('21WN reversible angora'),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('cardigan'),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('£120'),
          ],
        ),
      ],
    );
  }
}
