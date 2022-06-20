import 'package:ad_samy/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class pinCode extends StatelessWidget {
  const pinCode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      onCompleted: (value) {

      },
      enableActiveFill: true,
      keyboardType: TextInputType.number,
      appContext: context,
      length: 5,
      onChanged: (value) {},
      hintStyle:const TextStyle(
        color: kPrimaryColor,
      ),
      showCursor: false,
      pinTheme: PinTheme(
        borderRadius: BorderRadius.circular(10),
        fieldWidth: 60,
        fieldHeight: 60,
        selectedColor:Colors.white,
        shape: PinCodeFieldShape.box,
        activeColor:kPrimaryColor,
        inactiveColor: Colors.grey[300],
        activeFillColor: Colors.white,
        inactiveFillColor: Colors.white,
        selectedFillColor: Colors.grey[300],
      ),
    );
  }
}