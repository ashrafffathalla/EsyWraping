import 'package:ad_samy/shared/components/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SendToMyselfScreen extends StatelessWidget {
  const SendToMyselfScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fullName = TextEditingController();
    var currentLocationController = TextEditingController();
    var areaController = TextEditingController();
    var receiveDate = TextEditingController();
    var noteController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                'assets/images/bottom_leftt.png',
              ),
            ),
            Positioned(
              child: SingleChildScrollView(
              physics:const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width*0.05),
                child: Column(
                  children: [
                    SizeBoxStart(context),
                    SizedBox(height: size.height*0.03,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            'Send To Myself',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 25.sp,
                            fontFamily: 'Poppins'
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height*0.05,
                    ),
                    Row(
                      children: [
                        Text(
                          'Full Name',
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
                      controller: fullName,
                      type: TextInputType.name,
                      validate:(value){
                        if (value!.isEmpty) {
                          return 'Pleas enter your Full Name';
                        }
                        return null;
                      },
                      label: 'Full Name',

                    ),
                    SizedBox(
                      height: size.height*0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          'Current Location ',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SvgPicture.asset('assets/icons/pin.svg'),
                        ],
                    ),
                    SizedBox(
                      height: size.height*0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: size.width/2.5,
                          child: defaultFormField(
                            context,
                            controller: currentLocationController,
                            type: TextInputType.number,
                            validate:(value){
                              if (value!.isEmpty) {
                                return 'Pleas enter your Current Location';
                              }
                              return null;
                            },
                            label: '4578',

                          ),
                        ),
                        SizedBox(
                          width: size.width/2.5,
                          child: defaultFormField(
                            context,
                            controller: currentLocationController,
                            type: TextInputType.number,
                            validate:(value){
                              if (value!.isEmpty) {
                                return 'Pleas enter your Current Location';
                              }
                              return null;
                            },
                            label: '4578',

                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height*0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          'Area',
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
                      controller: areaController,
                      type: TextInputType.text,
                      validate:(value){
                        if (value!.isEmpty) {
                          return 'Pleas enter your Area';
                        }
                        return null;
                      },
                      label: 'Area',

                    ),
                    SizedBox(
                      height: size.height*0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          'Receive Date',
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
                      controller: receiveDate,
                      type: TextInputType.text,
                      validate:(value){
                        if (value!.isEmpty) {
                          return 'Pleas enter your Receive Date';
                        }
                        return null;
                      },
                      label: 'Receive Date',

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
                      height: size.height * 0.2,
                    ),
                    SizedBox(
                      height: size.height*0.01,
                    ),
                    defaultButton(
                      context,
                      function: (){},
                      text: 'Submit',
                      rounder: BorderRadius.circular(10),
                      width: size.width*0.5,
                    ),
                    SizedBox(
                      height: size.height*0.05,
                    ),
                  ],
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
