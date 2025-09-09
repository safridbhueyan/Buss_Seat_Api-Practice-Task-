// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtons extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isSpaceOn;
  const CustomButtons({
    super.key,
    required this.text,
    required this.icon,
    required this.isSpaceOn,
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Container(
      width: 10.w,
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: isSpaceOn ? Colors.white : Colors.grey,
      ),
      child: isSpaceOn
          ? SizedBox.shrink()
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 20.sp, color: Colors.black54),
                if (text != "null") ...[
                  Text(
                    text,
                    style: style.bodySmall!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ],
            ),
    );
  }
}
