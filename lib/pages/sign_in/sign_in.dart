import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearing_app/common/values/colors.dart';
import 'package:ulearing_app/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:ulearing_app/pages/sign_in/bloc/sign_in_events.dart';
import 'package:ulearing_app/pages/sign_in/bloc/sign_in_states.dart';
import 'package:ulearing_app/pages/sign_in/sign_in_controller.dart';
import 'package:ulearing_app/pages/sign_in/widgets/sign_in_widgets.dart';

import '../../widgets/componets/componets.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
        builder: (context, state) {
      return Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: buildAppBar(
              titleText: "Log in",
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildThirdPartyLogin(context),
                  Center(
                      child: reusableText(
                          "Or use your email account to login")),
                  Container(
                    margin: EdgeInsets.only(top: 36.h),
                    padding: EdgeInsets.only(left: 25.w, right: 25.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        reusableText("Email"),
                        SizedBox(
                          height: 5.h,
                        ),
                        buildTextfiled(context,
                            hintText: "Enter your email",
                            iconName: "user",
                            keyboardType: TextInputType.text,
                            onChanged: (value) {
                          context
                              .read<SignInBloc>()
                              .add(EmailEvent(value));
                        }),
                        reusableText("Password"),
                        SizedBox(
                          height: 5.h,
                        ),
                        buildTextfiled(
                          context,
                          hintText: "Enter your password",
                          iconName: "lock",
                          keyboardType: TextInputType.visiblePassword,
                          onChanged: (value) {
                            context
                                .read<SignInBloc>()
                                .add(PasswordEvent(value));
                          },
                          ispassword: true,
                        ),
                      ],
                    ),
                  ),
                  forgetPassword(),
                  buildBigButton(
                    text: "Login",
                    //buttonColor: AppColors.primaryElement,
                    margin: EdgeInsets.only(
                      left: 25.w,
                      right: 25.w,
                      top: 40.h,
                    ),
                    onTap: () {
                      SignInController(context: context)
                          .handlesSginIn("email");
                    },
                  ),
                  buildBigButton(
                      text: "Register",
                      buttonColor:
                          AppColors.primarySecondaryBackground,
                      textColor: AppColors.primaryText,
                      builderColor: AppColors.primaryFourElementText,
                      margin: EdgeInsets.only(
                        left: 25.w,
                        right: 25.w,
                        top: 20.h,
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed("register");
                      }),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
