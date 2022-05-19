import 'package:ad_samy/modules/sendto_other_screen/send_toother_screen.dart';
import 'package:ad_samy/shared/components/component.dart';
import 'package:ad_samy/shared/components/custom_checbox.dart';
import 'package:ad_samy/shared/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GiftInformationScreen extends StatefulWidget {
  const GiftInformationScreen({Key? key}) : super(key: key);

  @override
  State<GiftInformationScreen> createState() => _GiftInformationScreenState();
}

class _GiftInformationScreenState extends State<GiftInformationScreen> {
  int indexValue = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: floatButton(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
          child: Column(
            children: [
              SizeBoxStart(context),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Icon(
                    Icons.arrow_back,
                    size: 25.sp,
                  ),
                ],
              ),
              SizedBox(
                height: size.width * 0.025,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.27,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CardBuilder(context),
                  separatorBuilder: (context, index) => SizedBox(
                    width: size.width * 0.01,
                  ),
                  itemCount: 4,
                ),
              ),
              SizedBox(
                height: size.width * 0.025,
              ),
              Row(
                children: [
                  Text(
                    'Gift',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 30.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  RatingBar.builder(
                    minRating: 1,
                    updateOnDrag: true,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                ],
              ),
              SizedBox(
                height: size.width * 0.025,
              ),
              Row(
                children: [
                  Text(
                    'Filtration',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.add_circle_outline,
                    size: 27.sp,
                  ),
                ],
              ),
              SizedBox(
                height: size.width * 0.025,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Radio(
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => kPrimaryColor),
                        value: 1,
                        groupValue: indexValue,
                        onChanged: (value) {
                          setState(() {
                            indexValue = value as int;
                          });
                        },
                      ),
                       Text(
                          'Men',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'
                        ),
                      ),
                      SizedBox(
                        width: size.width*0.08,
                      ),
                      Container(
                        width:size.width*0.568,
                        height: size.height*0.034,
                        color: Colors.grey[300],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => kPrimaryColor),
                        value: 2,
                        groupValue: indexValue,
                        onChanged: (value) {
                          setState(() {
                            indexValue = value as int;
                          });
                        },
                      ),
                       Text(
                          'Women',
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'
                        ),
                      ),
                      Container(
                        width:size.width*0.568,
                        height: size.height*0.034,
                        color: Colors.grey[300],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => kPrimaryColor),
                        value: 3,
                        groupValue: indexValue,
                        onChanged: (value) {
                          setState(() {
                            indexValue = value as int;
                          });
                        },
                      ),
                       Text(
                          'Kids',
                         style: TextStyle(
                             fontSize: 18.sp,
                             color: kPrimaryColor,
                             fontWeight: FontWeight.w400,
                             fontFamily: 'Poppins'
                         ),
                      ),
                      SizedBox(
                        width: size.width*0.08,
                      ),
                      Container(
                        width:size.width*0.568,
                        height: size.height*0.034,
                        color: Colors.grey[300],
                      ),
                      //SizedBox(width: size.width*0.02,),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: size.width * 0.025,
              ),
              Row(
                children: [
                  Text(
                      'Size',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
               Row(
                 children: [
                   const CustomCheckBox(
                    isChecked: false,
                    text: 'S',
              ),
                    SizedBox(width: size.width*0.02,),
                   const CustomCheckBox(
                    isChecked: false,
                    text: 'M',
              ),
                   SizedBox(width: size.width*0.02,),
                   const CustomCheckBox(
                    isChecked: false,
                    text: 'L',
              ),
                 ],
               ),
              SizedBox(
                height: size.width * 0.025,
              ),
               Row(
                 children: [
                   colorsPalette(backgroundColor: kPrimaryColor),
                   SizedBox(width: size.width*0.03,),
                   colorsPalette(backgroundColor: Colors.black),
                   SizedBox(width: size.width*0.03,),
                   colorsPalette(backgroundColor: Colors.red),
                   SizedBox(width: size.width*0.03,),
                   colorsPalette(backgroundColor: Colors.blue),
                   SizedBox(width: size.width*0.03,),
                   colorsPalette(backgroundColor: Colors.green),
                 ],
               ),
              SizedBox(
                height: size.width * 0.025,
              ),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      ///TODO
                    },
                    child: Container(
                      width: size.width*0.92,
                      height: size.height*0.09,
                      decoration: BoxDecoration(
                        color:const Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: size.width*0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Row(
                             children: [
                               Text(
                                 'Gift For Myself',
                                 style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.w400,
                                   fontSize: 20.sp,
                                   fontFamily: 'Poppins',
                                 ),
                               ),
                               const Spacer(),
                               SvgPicture.asset('assets/icons/right.svg'),
                             ],
                           ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.width * 0.025,),
                  InkWell(
                    onTap: (){
                      navigateTo(context,const SendToOtherScreen());
                    },
                    child: Container(
                      width: size.width*0.92,
                      height: size.height*0.09,
                      decoration: BoxDecoration(
                        color:const Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: size.width*0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Row(
                             children: [
                               Text(
                                 'Send To Others',
                                 style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.w400,
                                   fontSize: 20.sp,
                                   fontFamily: 'Poppins',
                                 ),
                               ),
                               const Spacer(),
                               SvgPicture.asset('assets/icons/right.svg'),
                             ],
                           ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.width * 0.2,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget CardBuilder(context) => Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.27,
          child: Image.asset(
            'assets/images/van.png',
            fit: BoxFit.cover,
          ),
        ),
      );
}
