import 'package:ad_samy/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class pinCode extends StatelessWidget {
  const pinCode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: PinCodeTextField(
        onCompleted: (value) {

        },
        enableActiveFill: true,

        keyboardType: TextInputType.number,
        appContext: context,
        length: 5,
        onChanged: (value) {},
        hintStyle:const TextStyle(
          color: Colors.white,
        ),
        showCursor: false,
        pinTheme: PinTheme(
          borderRadius: BorderRadius.circular(0),
          fieldWidth: size.width*0.085,
          fieldHeight: size.height*0.04,
          selectedColor:kPrimaryColor.withOpacity(0.2),
          shape: PinCodeFieldShape.box,
          activeColor:kPrimaryColor,
          inactiveColor: Colors.black,
          activeFillColor: Colors.white,
          inactiveFillColor: Colors.white,
          selectedFillColor: Colors.white,
        ),
      ),
    );
  }
}