import 'package:ad_samy/modules/address_screen/address_screen.dart';
import 'package:ad_samy/modules/send_to_screen/send_to_screen.dart';
import 'package:ad_samy/shared/components/component.dart';
import 'package:ad_samy/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AddonsScreen extends StatefulWidget {
  const AddonsScreen({Key? key}) : super(key: key);
  @override
  State<AddonsScreen> createState() => _AddonsScreenState();
}
class _AddonsScreenState extends State<AddonsScreen> {
  int count = 0;
  void incrementCount(){
    setState(() {
      count++;
    });
  }
  void decrementCount(){
    if(count<1){
      return;
    }
    setState(() {
      count--;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizeBoxStart(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Addons',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Text(
                'do you need any addons?',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'if you need! please continue..',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: 'Poppins',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),

              ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => buildAddonsWidget(context),
                  separatorBuilder:(context, index) => SizedBox(height:size.height* 0.02,),
                  itemCount: 3,
              ),
              SizedBox(height: size.height*0.02,),
              Row(
                children: [
                  Text(
                      'Sup Total',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const Spacer(),
                  Text(
                      '250\$',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height*0.02,),
              Row(
                children: [
                  Text(
                      'Delivery Charge',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const Spacer(),
                  Text(
                      'Free',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height*0.02,),
              Row(
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '250\$',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),

                ],
              ),
              SizedBox(height: size.height*0.05,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  defaultButton(
                    context,
                    function: (){
                      navigateTo(context,const SendToScreen());
                    },
                    text: 'no',
                    rounder: BorderRadius.circular(10),
                    width: size.width/3,
                  ),
                  SizedBox(width: size.width*0.03,),
                  defaultButton(
                    context,
                    function: (){
                      navigateTo(context, const AddressScreen());
                    },
                    text: 'Continue',
                    rounder: BorderRadius.circular(10),
                    width: size.width/3,
                  ),
                ],

              ),
              SizedBox(height: size.height*0.07,),
            ],
          ),
        ),
      ),
    );
  }

  buildAddonsWidget(context) => Container(
    width: MediaQuery.of(context).size.width * 0.9,
    height: MediaQuery.of(context).size.height * 0.17,
    decoration: BoxDecoration(
      color: const Color(0xffFAF9F9),
      borderRadius: BorderRadius.circular(2),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Positioned(
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.36,
                  height: MediaQuery.of(context).size.height * 0.17,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/gifpng.png',
                        ),
                        fit: BoxFit.contain,
                      ),

                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.04,
        ),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.17,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "Flower",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.07,
                    ),
                  ],
                ),
                Text(
                  '35\$',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap:(){
                        incrementCount();
                      },
                      child: SvgPicture.asset(
                        'assets/icons/plus.svg',
                      ),
                    ),
                    Text(
                      " $count ",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                      ),
                    ),
                    GestureDetector(
                      onTap:(){
                        decrementCount();
                      },
                      child: SvgPicture.asset(
                          'assets/icons/minus.svg',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
