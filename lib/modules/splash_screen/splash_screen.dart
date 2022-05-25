import 'package:ad_samy/modules/login_screen/login_screen.dart';
import 'package:ad_samy/modules/start_screen/start_screen.dart';
import 'package:ad_samy/shared/components/component.dart';
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/splash.png',
                fit: BoxFit.cover,
              ),
              SizedBox(height: size.height*0.03,),
              GestureDetector(
                onTap: (){

                  navigateTo(context,const LoginScreen());
                },
                child: Container(
                  width: size.width /1.25,
                  height: size.height * 0.08,
                  child:const Center(
                    child:  Text(
                      'Get Started',
                      style: TextStyle(
                        fontFamily: 'Poppins',
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

              ),
              SizedBox(
                height: size.height*0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
