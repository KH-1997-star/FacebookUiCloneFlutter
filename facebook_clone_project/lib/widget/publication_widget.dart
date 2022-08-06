import 'package:facebook_clone_project/widget/grey_circular_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PublicationWidget extends StatelessWidget {
  const PublicationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 18.w, right: 17.5.w, top: 23.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 297.w,
                height: 50.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: CircularPercentIndicator(
                        radius: 20.0.r,
                        lineWidth: 2.0,
                        percent: 0.45,
                        center: Container(
                          height: 33.h,
                          width: 33.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('images/65.png'),
                            ),
                          ),
                        ),
                        backgroundColor: Colors.transparent,
                        progressColor: const Color(0xff0093FF),
                      ),
                    ),
                    /*  Flexible(
                      child: Stack(
                        children: [
                          Container(
                            height: 33.w,
                            width: 33.w,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color(0xff0093FF),
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
                                color: const Color(0xff0093FF),
                                width: 2.w,
                              ),
                            ),
                          )
                        ],
                      ),
                    ), */
                    SizedBox(
                      width: 13.w,
                    ),
                    Flexible(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Text(
                              'Daniela Fernández Ramos Daniela kabana ',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: const Color(0XFF19295C),
                                  fontSize: 15.sp),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Flexible(
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'icons/world_wide_icon.svg',
                                  height: 8.94.h,
                                  width: 8.94.h,
                                ),
                                SizedBox(
                                  width: 9.1.w,
                                ),
                                Text(
                                  'Hace 3 días',
                                  style: TextStyle(
                                    color: const Color(0XFFBABDC9),
                                    fontSize: 10.sp,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  GreyCircularWidget(
                    height: 25,
                    width: 25,
                    color: const Color(0xffEFF2F7),
                    icon: SizedBox(
                      height: 8.77.h,
                      width: 9.22.w,
                      child: SvgPicture.asset(
                        'icons/star_icon.svg',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 7.5.w,
                  ),
                  GreyCircularWidget(
                    height: 25,
                    width: 25,
                    color: const Color(0xffEFF2F7),
                    icon: SizedBox(
                      height: 4.h,
                      width: 14.w,
                      child: SvgPicture.asset(
                        'icons/more_icon.svg',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 19.w),
          child: SizedBox(
            width: 347.w,
            child: Text(
              'Me encanto la sesión de fotos que me hizo mi amigo 😍🥺',
              style: TextStyle(fontSize: 13.sp),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Container(
            height: 240.h,
            width: 375.54.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              color: Colors.green,
              image: const DecorationImage(
                image: AssetImage('images/big_image_5.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 9.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: SizedBox(
            width: 167.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '30 comentarios',
                  style: TextStyle(
                      color: const Color(0XFF747EA0), fontSize: 12.sp),
                ),
                Text(
                  '·',
                  style: TextStyle(
                      color: const Color(0XFF747EA0), fontSize: 12.sp),
                ),
                Text(
                  '5 compartidos',
                  style: TextStyle(
                      color: const Color(0XFF747EA0), fontSize: 12.sp),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 13.w, right: 15.w),
          child: SizedBox(
            width: double.infinity, //MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 34.w,
                      width: 34.w,
                      child: SvgPicture.asset(
                        'icons/like_icon.svg',
                        fit: BoxFit.scaleDown,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 3),
                              blurRadius: 30,
                              color: const Color(0XFF657190).withOpacity(0.16)),
                        ],
                        /*   gradient: const RadialGradient(
                              colors: [Color(0XFFFFFFFF), Color(0xffDADCE2)]) */
                      ),
                    ),
                    SizedBox(
                      width: 19.w,
                    ),
                    Container(
                      height: 34.w,
                      width: 34.w,
                      child: SvgPicture.asset(
                        'icons/comment_icon.svg',
                        fit: BoxFit.scaleDown,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 3),
                              blurRadius: 30,
                              color: const Color(0XFF657190).withOpacity(0.16)),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    Container(
                      height: 34.w,
                      width: 34.w,
                      child: SvgPicture.asset(
                        'icons/share_icon.svg',
                        fit: BoxFit.scaleDown,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 3),
                              blurRadius: 30,
                              color: const Color(0XFF657190).withOpacity(0.16)),
                        ],
                        /*   gradient: const RadialGradient(
                              colors: [Color(0XFFFFFFFF), Color(0xffDADCE2)]) */
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Mao Lop y 50 personas más',
                      style: TextStyle(
                        fontSize: 11.sp,
                      ),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          width: 39.w,
                          height: 20.w,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 18.w,
                          width: 18.w,
                          child: SvgPicture.asset(
                            'icons/like_icon.svg',
                            height: 7.91.h,
                            width: 8.79.w,
                            fit: BoxFit.scaleDown,
                            color: Colors.white,
                          ),
                          decoration: const BoxDecoration(
                            color: Color(0xff1977F3),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 13.5.w,
                          child: Container(
                            alignment: Alignment.center,
                            height: 22.w,
                            width: 22.w,
                            child: Container(
                              alignment: Alignment.center,
                              height: 18.w,
                              width: 18.w,
                              child: SvgPicture.asset(
                                'icons/heart_icon.svg',
                                height: 7.91.h,
                                width: 8.79.w,
                                fit: BoxFit.scaleDown,
                              ),
                              decoration: const BoxDecoration(
                                  color: Color(0xffF31954),
                                  shape: BoxShape.circle),
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
