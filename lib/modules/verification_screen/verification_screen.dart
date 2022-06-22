import 'package:ad_samy/modules/address_screen/address_screen.dart';
import 'package:ad_samy/modules/gift%20information_screen/gift_information_screen.dart';
import 'package:ad_samy/modules/sendto_other_screen/send_toother_screen.dart';
import 'package:ad_samy/modules/verification_screen/bloc/cubit.dart';
import 'package:ad_samy/modules/verification_screen/bloc/states.dart';
import 'package:ad_samy/shared/components/bin_code_field.dart';
import 'package:ad_samy/shared/components/component.dart';
import 'package:ad_samy/shared/components/coustom_snackpar.dart';
import 'package:ad_samy/shared/style/colors.dart';
import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationScreen extends StatelessWidget {
  final String email;
  final String password;

  const VerificationScreen(
      {Key? key, required this.email, required this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      child: BlocConsumer<VerificationCubit, VerificationStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = VerificationCubit.get(context);
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.whatsapp,
                size: 35.sp,
              ),
              backgroundColor: Colors.green,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.09,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.05,
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
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        pinCode(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    width: size.width * 0.5,
                    height: size.height * 0.06,
                    child: ArgonTimerButton(
                      roundLoadingShape: false,
                      initialTimer: 120, // one minute
                      height: size.height,
                      width: MediaQuery.of(context).size.width * 0.4,
                      onTap: (startTimer, btnState) {
                        if (btnState == ButtonState.Idle) {
                          cubit.sendOTPCode(
                            email: email.toString(),
                            password: password.toString(),
                          );
                          startTimer(120);
                        }
                      },
                      child: Text(
                        "Send Again",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins'
                        ),
                      ),
                      loader: (timeLeft) {
                        return Container(
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          margin: const EdgeInsets.all(5),
                          alignment: Alignment.center,
                          width: size.width * 0.5,
                          height: size.height * 0.06,
                          child: Text(
                            "Wait | $timeLeft",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins'
                            ),
                          ),
                        );
                      },
                      borderRadius: 12,
                      color: kPrimaryColor,
                      elevation: 0.0,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    width: size.width * 0.5,
                    height: size.height * 0.06,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: FlatButton(
                        onPressed: () {
                          if (state is SuccessSentOTPVerificationState) {
                            navigateTo(context, const GiftInformationScreen());
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              customSnackBar(
                                message: 'OTP Is Error',
                                title: 'Enter correct OTP',
                                type: ContentType.failure,
                              ),
                            );
                          }
                        },
                        color: kPrimaryColor,
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
