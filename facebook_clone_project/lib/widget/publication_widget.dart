import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PublicationWidget extends StatelessWidget {
  const PublicationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 33.w,
          width: 33.w,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xff0093FF),
                width: 2.w,
              )),
        ),
        Container(
          height: 33.w,
          width: 33.w,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 2.w,
              )),
        )
        /*  Container(
          height: 33.w,
          width: 33.w,
          child: CircularProgressIndicator(
            value: 0.25,
            color: Color(0xff0093FF),
            
            strokeWidth: 2.0.w,
          ),
        ), */
      ],
    );
  }
}
