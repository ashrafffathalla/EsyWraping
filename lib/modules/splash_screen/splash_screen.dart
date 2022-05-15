import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:const Color(0xffE75480),
      body: Padding(
        padding:  EdgeInsets.all( size.width*0.01,),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Image.asset('assets/images/splash.png',),
              SizedBox(height: size.height*0.03,),
              Container(
                width: size.width /1.25,
                height: size.height * 0.08,
                child:const Center(
                  child:  Text(
                    'Get Started',
                    style: TextStyle(
                      fontFamily: 'Popins',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
