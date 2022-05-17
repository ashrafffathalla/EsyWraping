import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                'assets/images/top_right.png',
                width: size.width * 0.35,
              ),),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                'assets/images/bottom.png',
                width: size.width * 0.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
