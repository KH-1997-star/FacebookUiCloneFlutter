import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoryWidget extends StatelessWidget {
  final String imagePath, title;
  final bool isFirst;
  const StoryWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    this.isFirst = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [
      SizedBox(
        height: 23.7.w,
        width: 23.7.w,
        child: DottedBorder(
          child: Center(
            child: Container(
              height: 16.93.w,
              width: 16.93.w,
              child: const Icon(
                Icons.add,
                size: 10,
                color: Colors.white,
              ),
              decoration: const BoxDecoration(
                color: Color(0xff1977F3),
                shape: BoxShape.circle,
              ),
            ),
          ),
          borderType: BorderType.Circle,
          color: const Color(0XFF2196F3),
          dashPattern: const [3, 3],
        ),
      ),
      Container(
        height: 23.7.w,
        width: 23.7.w,
        child: Align(
          child: Container(
            height: 18.69.w,
            width: 18.69.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/big_image_1.jpg'),
              ),
            ),
          ),
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
          border: Border.all(
            color: const Color(0xff1977F3),
          ),
        ),
      )
    ];
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 70.76.w,
              height: 81.h,
            ),
            Container(
              height: 70.76.h,
              width: 70.76.w,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25.r),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 22.38.w,
              child: isFirst ? widgetList[0] : widgetList[1],
            )
          ],
        ),
        SizedBox(height: 1.7.h),
        Text(
          title,
          style: TextStyle(
            fontSize: 12.sp,
            color: const Color(0xff444D6E),
          ),
        )
      ],
    );
  }
}
