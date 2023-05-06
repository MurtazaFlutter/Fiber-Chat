import 'package:fiber_chat_ui/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeGroupScreen extends StatelessWidget {
  const WelcomeGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7FAFB),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(107.h),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Entertain your',
                    style: GoogleFonts.poppins(
                        fontSize: 26.h,
                        color: const Color(0xff323232),
                        fontWeight: FontWeight.w400),
                  ),
                  TextSpan(
                    text: ' Group \nmembers ',
                    style: GoogleFonts.poppins(
                        fontSize: 26.h,
                        color: const Color(0xff323232),
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'with the best of creative contents.',
                    style: GoogleFonts.poppins(
                        fontSize: 26.h,
                        color: const Color(0xff323232),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            Gap(50.h),
            Image.asset('lib/assets/Group 1198.png'),
            Gap(72.h),
            TextWidget(
              text:
                  'Begin your journey of monetization  \nwhen you reach 5000 members. \nStarting December 31st, 2023.',
              color: const Color(0xff878D90),
              weight: FontWeight.w500,
              size: 18.h,
            ),
            Gap(34.h),
            Container(
              height: 61.h,
              width: 200.w,
              decoration: BoxDecoration(
                  color: const Color(0xff00A36C),
                  borderRadius: BorderRadius.circular(30.r)),
              child: Center(
                  child: TextWidget(
                      text: 'Get Started',
                      color: Colors.white,
                      weight: FontWeight.w400,
                      size: 17.h)),
            )
          ],
        ),
      ),
    );
  }
}
