import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.whatsapp,
            size: 35.sp,
          ),
          backgroundColor: Colors.green,
          elevation: 0,
        ),
        body: Column(
          children: [
            SizedBox(
              height: size.height * 0.09,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width * 0.04,
                ),
                const Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
                SizedBox(
                  width: size.width / 4.5,
                ),
                Text(
                  'Verification',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins'),
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Image.asset('assets/images/verified.png'),
            SizedBox(
              height: size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: size.height * 0.052,
                  width: size.width * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff707070), // red as border color
                    ),
                  ),
                  child: TextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.052,
                  width: size.width * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff707070), // red as border color
                    ),
                  ),
                  child: TextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.052,
                  width: size.width * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff707070), // red as border color
                    ),
                  ),
                  child: TextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.052,
                  width: size.width * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff707070), // red as border color
                    ),
                  ),
                  child: TextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.052,
                  width: size.width * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff707070), // red as border color
                    ),
                  ),
                  child: TextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
