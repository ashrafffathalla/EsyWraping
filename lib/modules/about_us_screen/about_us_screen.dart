import 'package:ad_samy/shared/components/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: floatButton(),
      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: size.width*0.05),
        child: SingleChildScrollView(
          physics:const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizeBoxStart(context),
              Row(
                children:[
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      size: 25,
                    ),
                  ),
                  SizedBox(width: size.width*0.05,),
                  Text(
                    'About Us',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(height: size.height*0.05,),
              Image.asset(
                'assets/images/golden.png',
                fit: BoxFit.cover,
              ),
              SizedBox(height: size.height*0.03,),
              Column(
                children: [
                  Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.",
                    style: TextStyle(
                      color: const Color(0xff707070),
                      fontSize: 15.sp,
                      fontFamily: 'Poppins'
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
