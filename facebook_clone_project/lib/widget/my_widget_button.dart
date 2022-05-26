import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyWidgetButton extends StatelessWidget {
  final String imagePath, title;
  const MyWidgetButton({Key? key, required this.imagePath, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        alignment: Alignment.center,
        height: 34.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.r),
          color: const Color(0XFFF8F9FA),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(flex: 1, child: SvgPicture.asset(imagePath)),
            SizedBox(
              width: 10.h,
            ),
            Flexible(
              flex: 2,
              child: Text(
                title,
                style: TextStyle(fontSize: 12.sp),
              ),
            )
          ],
        ),
      ),
    );
  }
}
