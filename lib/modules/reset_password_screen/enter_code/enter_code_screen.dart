import 'package:ad_samy/modules/reset_password_screen/enter_code/cubit/cubit.dart';
import 'package:ad_samy/modules/reset_password_screen/enter_code/cubit/states.dart';
import 'package:ad_samy/shared/components/component.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/components/coustom_snackpar.dart';
import '../reset_password_screen.dart';

class EnterCodeScreen extends StatelessWidget {
  EnterCodeScreen({Key? key}) : super(key: key);
  var enterCodeController = TextEditingController();
  var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) =>EnterCodeCubit(),
      child: BlocConsumer<EnterCodeCubit,EnterCodeStates>(
        listener: (context, state) {
          if(state is SuccessEnterCodeState){
            ScaffoldMessenger.of(context).showSnackBar(
              customSnackBar(
                message: 'Valid Code',
                title: 'Success!',
                type: ContentType.success,
              ),
            );
            navigateAndFinish(context, ResetPasswordScreen());
          }else{
            return ;
          }
        },
        builder: (context, state) {
          EnterCodeCubit cubit = EnterCodeCubit.get(context);
         return Form(
            key: formKey,
            child: Scaffold(
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Enter Code',
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    defaultFormField(
                      context,
                      controller: enterCodeController,
                      type: TextInputType.text,
                      validate: (value) {
                        if(value!.isEmpty){
                          return 'Please Enter Code';
                        }
                        return null;
                      },
                      label: '',
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    SizedBox(
                      width: size.width*0.5,
                      child: defaultButton(
                        context,
                        function: (){
                          if(formKey.currentState!.validate()){
                            cubit.enterCode(
                                code: enterCodeController.text,
                            );
                          }
                        },
                        text: 'Submit',
                        rounder: BorderRadius.circular(12),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
