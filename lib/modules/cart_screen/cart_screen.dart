import 'package:ad_samy/shared/components/component.dart';
import 'package:ad_samy/shared/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
        padding:EdgeInsets.symmetric(horizontal: size.width*0.091,),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizeBoxStart(context),
            Row(
              children: [
                SvgPicture.asset('assets/icons/menu.svg'),
                SizedBox(width: size.width*0.05,),
                Text(
                    'Cart',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
               //TODO SvgPicture.asset('assets/icons/'),
              ],
            ),
              SizedBox(height: size.height*0.03,),
              Container(
               height: size.height/1.5,
               decoration:BoxDecoration(
                 borderRadius: BorderRadius.circular(16),
                 border: Border.all(
                     color:const Color(0xff707070),
                 ),
                 color:const Color(0xffFFFDFD)
               ),
                child: Padding(
                  padding:EdgeInsets.symmetric(
                      horizontal: size.width*0.04,
                    vertical: size.height*0.04,
                  ),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'BABY GIFT',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: size.height*0.02,),
                            myDivider(context),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/baby.png',
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: size.width*0.01,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: size.height*0.02,),
                                    Text(
                                      'Baby Gift',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      width: size.width/4,
                                      child: Text(
                                        'Lorem ipsum dolor sit amet consectetur adipiscing elit',
                                        maxLines: 2,
                                        overflow:TextOverflow.ellipsis ,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '20 RS',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Free Shopping',
                                          style: TextStyle(
                                            color: kPrimaryColor,
                                            fontFamily: 'Poppins',
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: size.width*0.05,),
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
                                                fontSize: 15.sp,
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
                                    SizedBox(height: size.height*0.02,),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: size.height*0.02,),
                                Container(
                                  width: size.width*0.155,
                                  height: size.height*0.026,
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      border: Border.all(
                                        color:const Color(0xff707070),
                                      ),
                                      color:const Color(0xffFFFDFD)
                                  ),
                                  child: Center(
                                    child: Text(
                                      'EDIT',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: size.width*0.04,),
                                Container(
                                  width: size.width*0.155,
                                  height: size.height*0.026,
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      border: Border.all(
                                        color:const Color(0xff707070),
                                      ),
                                      color:const Color(0xffFFFDFD)
                                  ),
                                  child: Center(
                                    child: Text(
                                      'DELETE',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height*0.02,),
                            myDivider(context),
                            SizedBox(height: size.height*0.02,),
                          ],
                        ),
                        //Start CArt 2
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mens GIFT',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: size.height*0.02,),
                            myDivider(context),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/mens.png',
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: size.width*0.01,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: size.height*0.02,),
                                    Text(
                                      'Mens Gift',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      width: size.width/4,
                                      child: Text(
                                        'Lorem ipsum dolor sit amet consectetur adipiscing elit',
                                        maxLines: 2,
                                        overflow:TextOverflow.ellipsis ,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '20 RS',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(

                                      children: [
                                        Text(
                                          'Free Shopping',
                                          style: TextStyle(
                                            color: kPrimaryColor,
                                            fontFamily: 'Poppins',
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: size.width*0.05,),
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
                                    SizedBox(height: size.height*0.02,),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: size.height*0.02,),
                                Container(
                                  width: size.width*0.155,
                                  height: size.height*0.026,
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      border: Border.all(
                                        color:const Color(0xff707070),
                                      ),
                                      color:const Color(0xffFFFDFD)
                                  ),
                                  child: Center(
                                    child: Text(
                                      'EDIT',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: size.width*0.04,),
                                Container(
                                  width: size.width*0.155,
                                  height: size.height*0.026,
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      border: Border.all(
                                        color:const Color(0xff707070),
                                      ),
                                      color:const Color(0xffFFFDFD)
                                  ),
                                  child: Center(
                                    child: Text(
                                      'EDIT',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height*0.02,),
                            myDivider(context),
                            SizedBox(height: size.height*0.02,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height*0.03,),
              defaultButton(
                context,
                function: (){},
                text: 'Continue',
                rounder: BorderRadius.circular(10),
                width: size.width/3,
              ),
              SizedBox(height: size.height*0.03,),
            ],
          ),
        ),
      ),
    );
  }
}
