import 'package:ad_samy/shared/components/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/style/colors.dart';

class SpecialEventScreen extends StatelessWidget {
  const SpecialEventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var eventDayController = TextEditingController();
    var eventLocationController = TextEditingController();
    var phoneController = TextEditingController();
    var receivedDateController = TextEditingController();
    var noteController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: floatButton(),
      body: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizeBoxStart(context),
              Center(
                child: Container(
                  width: size.width*0.91,
                  height: size.height/4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                child: SvgPicture.asset('assets/icons/elips.svg'),
                              ),
                              Padding(
                                padding:  EdgeInsets.symmetric(
                                  horizontal: size.width*0.06,
                                  vertical: size.width*0.062,
                                ),
                                child: Positioned(
                                  child: SvgPicture.asset('assets/icons/event.svg'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width:size.width*0.03,),
                          Column(
                            children: [
                              Text(
                                'Special Event',
                                style: TextStyle(
                                    color:kPrimaryColor,
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins'
                                ),
                              ),
                              Text(
                                '(مناسبة خاصة)',
                                style: TextStyle(
                                    color:kPrimaryColor,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins'
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                  decoration: BoxDecoration(
                    color:const Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: size.width*0.05,),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height*0.01,
                    ),
                    Row(
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height*0.01,
                    ),
                    defaultFormField(
                      context,
                      controller: nameController,
                      type: TextInputType.text,
                      validate:(value){
                        if (value!.isEmpty) {
                          return 'Pleas enter your Name';
                        }
                        return null;
                      },
                      label: 'Name',

                    ),
                    SizedBox(
                      height: size.height*0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          'Event day',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height*0.01,
                    ),
                    defaultFormField(
                      context,
                      controller: eventDayController,
                      type: TextInputType.datetime,
                      validate:(value){
                        if (value!.isEmpty) {
                          return 'Pleas enter your Event day';
                        }
                        return null;
                      },
                      label: 'Day',

                    ),
                    SizedBox(
                      height: size.height*0.02,
                    ),

                    Row(
                      children: [
                        Text(
                          'Event Location',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height*0.01,
                    ),
                    defaultFormField(
                      context,
                      controller: eventLocationController,
                      type: TextInputType.text,
                      validate:(value){
                        if (value!.isEmpty) {
                          return 'Pleas enter your Event Location';
                        }
                        return null;
                      },
                      label: 'Location',

                    ),
                    SizedBox(
                      height: size.height*0.02,
                    ),

                    Row(
                      children: [
                        Text(
                          'Phone Number',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height*0.01,
                    ),
                    defaultFormField(
                      context,
                      controller: phoneController,
                      type: TextInputType.phone,
                      validate:(value){
                        if (value!.isEmpty) {
                          return 'Pleas enter your Phone Number';
                        }
                        return null;
                      },
                      label: 'Phone',
                    ),
                    SizedBox(
                      height: size.height*0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          'Received Date',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height*0.01,
                    ),
                    defaultFormField(
                      context,
                      controller: receivedDateController,
                      type: TextInputType.datetime,
                      validate:(value){
                        if (value!.isEmpty) {
                          return 'Pleas enter your Received Date';
                        }
                        return null;
                      },
                      label: 'Received Date',
                    ),
                    SizedBox(
                      height: size.height*0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          'Note',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height*0.01,
                    ),
                    Container(
                      child: TextFormField(
                        controller: noteController,
                        maxLines: 5,
                        keyboardType: TextInputType.multiline,
                        decoration:const InputDecoration(
                          hintText: 'type something',
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(6)),
                          ),
                        ),
                      ),
                      width: size.width * 0.9,
                      height: size.height * 0.21,
                    ),
                    SizedBox(height: size.height*0.02,),
                    /// ON TAB BUTTON Section
                    GestureDetector(
                      onTap: (){
                        ///TODO
                      },
                      child: Container(
                        height: size.height*0.08,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            gradient:const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xffAF1E5A),
                                Color(0xffEAA8BF),
                              ],
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'For Special Order',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize:20.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SvgPicture.asset('assets/icons/arrow-white.svg')
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: size.height*0.05,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
