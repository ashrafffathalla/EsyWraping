import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                  'assets/images/stack.png',
                width: size.width *0.8,
              ),
              width: size.width *0.8,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/stack.png",
                width: size.width * 0.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
