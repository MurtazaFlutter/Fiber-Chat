import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import '../../widgets/text_widget.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7FAFB),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 56.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: 'GP.Chat',
                  color: Colors.black,
                  size: 22.h,
                  weight: FontWeight.w600,
                ),
                Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30.h,
                )
              ],
            ),
            Gap(30.h),
            const GroupsMenu(),
            Gap(29.h),
            Expanded(
              child: MasonryGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 15.h,
                crossAxisSpacing: 15.w,
                itemBuilder: (context, index) {
                  return Container(
                    height: 190.h,
                    width: 171.w,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.grey,
                          spreadRadius: 1,
                        )
                      ],
                      color: const Color(0xffF7FAFB),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 20.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      TextWidget(
                                          text: 'ADULTS',
                                          color: Colors.black,
                                          weight: FontWeight.w500,
                                          size: 14.h),
                                      TextWidget(
                                          text: '35k Members',
                                          color: const Color(0xffABB0B2),
                                          weight: FontWeight.w500,
                                          size: 10.h),
                                    ],
                                  ),
                                  Container(
                                      height: 48.h,
                                      width: 48.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30.r),
                                          color: const Color(0xff00A36C)),
                                      child: Image.asset(
                                          'lib/assets/Group 1210.png')),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                  text: 'The Adults Groups',
                                  color: const Color(0xffABB0B2),
                                  weight: FontWeight.w500,
                                  size: 10.h),
                              Gap(10.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  TextWidget(
                                      text: 'USA',
                                      color: const Color(0xffABB0B2),
                                      weight: FontWeight.w500,
                                      size: 10.h),
                                  Gap(5.w),
                                  Image.asset('lib/assets/Mask Group 8.png')
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GroupsMenu extends StatefulWidget {
  const GroupsMenu({
    super.key,
  });

  @override
  State<GroupsMenu> createState() => _GroupsMenuState();
}

class _GroupsMenuState extends State<GroupsMenu> {
  int selectedIndex = 0;
  final List<String> menu = [
    'My Groups',
    'New Groups',
    'Favorite Groups',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48.h,
      decoration: BoxDecoration(
          color: const Color(0xffABB0B2),
          borderRadius: BorderRadius.circular(20.r)),
      child: Row(
        children: [
          ...List.generate(
              menu.length,
              (index) => InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      width: 114.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? const Color(0xff00A36C)
                            : null,
                        borderRadius: selectedIndex == index
                            ? BorderRadius.circular(20.r)
                            : null,
                      ),
                      child: TextWidget(
                          text: menu[index],
                          color: selectedIndex == index
                              ? Colors.white
                              : const Color(0xff323232),
                          weight: FontWeight.w400,
                          size: 14.h),
                    ),
                  ))
        ],
      ),
    );
  }
}
