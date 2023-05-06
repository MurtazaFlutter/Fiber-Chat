import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import '../../provider/chat_provider.dart';
import '../../widgets/text_widget.dart';

class Chats extends StatelessWidget {
  const Chats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final chatProvider = Provider.of<ChatProvider>(context, listen: false);

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffF7FAFB),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          ),
        ),
        child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: chatProvider.messages.length,
            itemBuilder: (context, index) {
              final user = chatProvider.messages;
              return ListTile(
                leading: CircleAvatar(
                    radius: 40.h,
                    backgroundColor: Colors.amberAccent,
                    backgroundImage: NetworkImage(user[index].image)),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                        text: user[index].name,
                        color: Colors.black,
                        weight: FontWeight.bold,
                        size: 16.h),
                    TextWidget(
                        text: user[index].message,
                        color: const Color(0xff9B9B9B),
                        weight: FontWeight.w400,
                        size: 13.h),
                  ],
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 18.h,
                      width: 18.w,
                      decoration: const BoxDecoration(
                          color: Color(0xff00A36C), shape: BoxShape.circle),
                      child: Center(
                        child: TextWidget(
                            text: user[index].numberOfMessages.toString(),
                            color: Colors.white,
                            weight: FontWeight.bold,
                            size: 12.h),
                      ),
                    ),
                    Gap(5.h),
                    TextWidget(
                        text: '17/05',
                        color: const Color(0xff9B9B9B),
                        weight: FontWeight.w400,
                        size: 11.h),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
