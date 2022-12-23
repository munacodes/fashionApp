import 'package:fashion_app/screens/userProfile.dart';
import 'package:fashion_app/widgets/widgetsExports.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/utils/fashionTheme.dart';

class MyHomePageScreen extends StatefulWidget {
  const MyHomePageScreen({Key? key}) : super(key: key);

  @override
  State<MyHomePageScreen> createState() => _MyHomePageScreenState();
}

class _MyHomePageScreenState extends State<MyHomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            children: const [
              Expanded(
                child: Icon(
                  Icons.list,
                  color: Color(0xFF333333),
                ),
              ),
              SizedBox(
                width: 103.36,
              ),
              SecondaryButton(
                title: 'BELLA MODA',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyProfilePage(),
                    ),
                  );
                },
              ),
              SizedBox(
                width: 68.82,
              ),
              Expanded(
                child: Icon(
                  Icons.search,
                  color: Color(0xFF333333),
                ),
              ),
              SizedBox(
                width: 16.21,
              ),
              Expanded(
                child: Icon(
                  Icons.shopping_bag,
                  color: Color(0xFF333333),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/image 10.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              const Positioned(
                width: 175.16,
                height: 43.49,
                top: 231.44,
                left: 42.84,
                child: Text(
                  'LUXURY',
                  style: TextStyle(
                    fontSize: 38.66,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF333333),
                  ),
                ),
              ),
              const Positioned(
                width: 187.24,
                height: 43.49,
                left: 60.37,
                top: 269.64,
                child: Text(
                  'FASHION',
                  style: TextStyle(
                    fontSize: 38.66,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF333333),
                  ),
                ),
              ),
              const Positioned(
                width: 287.51,
                height: 43.49,
                left: 65.24,
                top: 309.02,
                child: Text(
                  '&ACCESSORIES',
                  style: TextStyle(
                    fontSize: 38.66,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF333333),
                  ),
                ),
              ),
              _exploreCollection()
            ],
          ),
        ),
      ),
    );
  }

  Widget _exploreCollection() {
    return Center(
      child: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('ggahgh'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
