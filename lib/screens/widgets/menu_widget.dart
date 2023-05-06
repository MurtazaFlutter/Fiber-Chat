import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/text_widget.dart';

class Menu extends StatefulWidget {
  const Menu({
    super.key,
  });

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  final List<String> menu = ['Chats', 'Groups', 'Status', 'More'];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
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
              height: 35.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: selectedIndex == index ? Colors.white : null,
                borderRadius:
                    selectedIndex == index ? BorderRadius.circular(30.r) : null,
              ),
              child: Center(
                child: TextWidget(
                  text: menu[index],
                  color: selectedIndex == index
                      ? const Color(0xff00A36C)
                      : Colors.white,
                  size: selectedIndex == index ? 16 : 13,
                  weight: selectedIndex == index
                      ? FontWeight.w700
                      : FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
