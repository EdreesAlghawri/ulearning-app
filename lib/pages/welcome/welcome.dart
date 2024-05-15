import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearing_app/common/values/colors.dart';
import 'package:ulearing_app/pages/welcome/blocs/welcome_blocs.dart';
import 'package:ulearing_app/pages/welcome/blocs/welcome_events.dart';
import 'package:ulearing_app/pages/welcome/blocs/welcome_states.dart';

import '../../widgets/componets/componets.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(body: BlocBuilder<WelcomeBloc, WelcomeState>(
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.only(top: 34.h),
            width: 375.w,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    state.page = index;
                    BlocProvider.of<WelcomeBloc>(context)
                        .add(WelcomeEvent());
                  },
                  children: [
                    _pige(
                      1, // index page
                      context, //buildcontext
                      "assets/images/reading.png", //image path
                      'Frist See Learninig', //text title
                      'Forget about a for of paper all Knowledge in one learning', //subtitle
                      "next", // buttonName
                    ),
                    _pige(
                      2, // index page
                      context, //buildcontext
                      "assets/images/boy.png", //image path
                      'Connect With Everyone', //text title
                      'Always keep in touch with your tutor & friend let is get connected!', //subtitle
                      "next", // buttonName
                    ),
                    _pige(
                      3, // index page
                      context, //buildcontext
                      "assets/images/man.png", //image path
                      'Always Fascinated Learning', //text title
                      'Anywhere, anytime. The time is at your discretion so study whenever you want', //subtitle
                      "Get Started", // buttonName
                    ),
                  ],
                ),
                Positioned(
                  bottom: 100.h,
                  child: DotsIndicator(
                    position: state.page,
                    dotsCount: 3,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                        color: AppColors.primaryThreeElementText,
                        activeColor: AppColors.primaryElement,
                        size: const Size.square(8.0),
                        activeSize: const Size(18.0, 8.0),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                  ),
                ),
              ],
            ),
          );
        },
      )),
    );
  }

  Widget _pige(
    int index,
    BuildContext context,
    String imagePath,
    String title,
    String sunTitle,
    String buttonName,
  ) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24.sp,
              color: AppColors.primaryText,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          width: 375.w,
          //alignment: Alignment.center,
          child: Text(
            sunTitle,
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.primarySecondaryElementText,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        buildBigButton(
          onTap: () {
            if (index < 3) {
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 700),
                curve: Curves.easeIn,
              );
            } else {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  "signin", (route) => false);
            }
          },
          text: buttonName,
          margin:
              EdgeInsets.only(top: 100.h, right: 25.w, left: 25.w),
          //  buttonColor: Colors.blue,
        ),
      ],
    );
  }
}
