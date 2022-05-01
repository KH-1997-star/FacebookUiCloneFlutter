import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GreyCircularWidget extends StatelessWidget {
  final Widget? icon;
  const GreyCircularWidget({Key? key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37.w,
      width: 37.w,
      child: icon ?? const SizedBox(),
      decoration: const BoxDecoration(
        color: Color(0xffFAFAFA),
        shape: BoxShape.circle,
      ),
    );
  }
}
