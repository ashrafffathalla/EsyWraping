import 'package:ad_samy/modules/reset_password_screen/enter_code/enter_code_screen.dart';
import 'package:ad_samy/modules/reset_password_screen/enter_email/cubit/states.dart';
import 'package:ad_samy/shared/components/component.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/components/coustom_snackpar.dart';
import 'cubit/cubit.dart';

class EnterEmailScreen extends StatelessWidget {
  EnterEmailScreen({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
    create:(context) => EnterEmailCubit(),
      child: BlocConsumer<EnterEmailCubit,EnterEmailStates>(
        listener: (context, state) {
          if(state is SuccessEnterEmailState){
            ScaffoldMessenger.of(context).showSnackBar(
              customSnackBar(
                message: state.enterEmailModel.message!,
                title: 'Success!',
                type: ContentType.success,
              ),
            );
            navigateAndFinish(context, EnterCodeScreen());
          }else{
            const Center(child: CircularProgressIndicator());
          }
        },
        builder: (context,state){
          EnterEmailCubit cubit = EnterEmailCubit.get(context);
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
                        'Enter Your Email',
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
                      controller: emailController,
                      type: TextInputType.emailAddress,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Pleas enter your email';
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
                            cubit.enterEmail(
                                email: emailController.text,
                            );
                          }
                        },
                        text: 'Get Code',
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
