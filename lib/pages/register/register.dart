import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearing_app/pages/register/blocs/register_blocs.dart';
import 'package:ulearing_app/pages/register/blocs/register_events.dart';
import 'package:ulearing_app/pages/register/blocs/register_states.dart';
import 'package:ulearing_app/pages/register/register_controller.dart';
import 'package:ulearing_app/pages/sign_in/widgets/sign_in_widgets.dart';

import '../../widgets/componets/componets.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
      return Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: buildAppBar(titleText: "Sign Up"),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      top: 30.h,
                    ),
                    child: reusableText(
                      "Enter your details below & free sign up",
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.h),
                    padding: EdgeInsets.only(left: 25.w, right: 25.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        reusableText("User Name"),
                        buildTextfiled(context,
                            hintText: "Enter your user name",
                            iconName: "user",
                            keyboardType: TextInputType.text,
                            onChanged: (value) {
                          context
                              .read<RegisterBloc>()
                              .add(UserNameEvent(value));
                        }),
                        reusableText("Email"),
                        buildTextfiled(context,
                            hintText: "Enter your email",
                            iconName: "user",
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                          context
                              .read<RegisterBloc>()
                              .add(EmailEvent(value));
                        }),
                        reusableText("Password"),
                        buildTextfiled(
                          context,
                          hintText: "Enter your password",
                          iconName: "lock",
                          keyboardType: TextInputType.visiblePassword,
                          onChanged: (value) {
                            context
                                .read<RegisterBloc>()
                                .add(PasswordEvent(value));
                          },
                          ispassword: true,
                        ),
                        reusableText("Confirm Password"),
                        buildTextfiled(context,
                            hintText: "Enter confirm your password",
                            iconName: "lock",
                            keyboardType:
                                TextInputType.visiblePassword,
                            ispassword: true, onChanged: (value) {
                          context
                              .read<RegisterBloc>()
                              .add(RePasswordEvent(value));
                        }),
                        reusableText(
                            "By creating an account you to agree with our therm & condication"),
                      ],
                    ),
                  ),
                  buildBigButton(
                      text: "Sign Up",
                      margin: EdgeInsets.only(
                        left: 25.w,
                        right: 25.w,
                        top: 20.h,
                      ),
                      onTap: () {
                        RegisterController(context: context)
                            .handlesEmailRegister();
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
