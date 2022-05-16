import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/components/component.dart';
import '../../shared/style/colors.dart';

class SendToOtherScreen extends StatelessWidget {
  const SendToOtherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)  {
    var fullName = TextEditingController();
    var currentLocationController = TextEditingController();
    var phoneController = TextEditingController();
    var receivedDateController = TextEditingController();
    var noteController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding:EdgeInsets.symmetric(horizontal:size.width*0.05 ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: size.height*0.15,),
              Text(
                'Send To Other',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w400,
                  color: kPrimaryColor,
                ),
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
                    'Current Location',
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
                controller: currentLocationController,
                type: TextInputType.emailAddress,
                validate:(value){
                  if (value!.isEmpty) {
                    return 'Pleas enter your Current Location';
                  }
                  return null;
                },
                label: 'Address Details',

              ),
              SizedBox(
                height: size.height*0.02,
              ),

              Row(
                children: [
                  Text(
                    'Phone',
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
                    return 'Pleas enter your phone number';
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
                type: TextInputType.visiblePassword,
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
    );
  }
}
