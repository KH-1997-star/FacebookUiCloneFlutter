import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoryWidget extends StatelessWidget {
  final String imagePath, title;
  const StoryWidget({Key? key, required this.imagePath, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70.76.h,
          width: 70.76.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10.9.h),
        Text(
          title,
          style: TextStyle(
            fontSize: 12.sp,
            color: Color(0xff444D6E),
          ),
        )
      ],
    );
  }
}
