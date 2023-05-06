import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../widgets/text_widget.dart';
import '../widgets/chats_widget.dart';
import '../widgets/menu_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: const Color(0xff00A36C),
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 40.h,
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'lib/assets/green.png',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(80.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: 'GP.Chat',
                          color: Colors.white,
                          size: 22.h,
                          weight: FontWeight.w700,
                        ),
                        Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30.h,
                        )
                      ],
                    ),
                    Gap(30.h),
                    const Menu(),
                    Gap(30.h),
                  ],
                ),
              ),
              const Chats()
            ],
          )
        ],
      ),
    );
  }
}
