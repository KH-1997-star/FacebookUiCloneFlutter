import 'package:facebook_clone_project/widget/grey_circular_container.dart';
import 'package:facebook_clone_project/widget/my_bottom_nav_bar.dart';
import 'package:facebook_clone_project/widget/my_widget_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;

class FacebookHomeScreen extends StatefulWidget {
  const FacebookHomeScreen({Key? key}) : super(key: key);

  @override
  State<FacebookHomeScreen> createState() => _FacebookHomeScreenState();
}

class _FacebookHomeScreenState extends State<FacebookHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 17.w),
          child: InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              'icons/facebook_icon.svg',
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        actions: [
          GreyCircularWidget(
            icon: SvgPicture.asset(
              'icons/loop_icon.svg',
              fit: BoxFit.scaleDown,
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              GreyCircularWidget(
                icon: SvgPicture.asset(
                  'icons/notif_icon.svg',
                  fit: BoxFit.scaleDown,
                ),
              ),
              Positioned(
                top: 14.h,
                right: 3.w,
                child: Container(
                  height: 9.w,
                  width: 9.w,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 12.w,
          ),
          GreyCircularWidget(
            icon: SvgPicture.asset(
              'icons/messenger_icon.svg',
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(
            width: 17.w,
          ),
          Container(
            height: 37.w,
            width: 37.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/my_image.jpg'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            width: 18.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            Column(
              children: [
                const Opacity(
                  opacity: 0.06,
                  child: Divider(
                    height: 0.8,
                    color: Color(0xff707070),
                    thickness: 1,
                  ),
                ),
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 31.w, left: 20.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 18.h),
                                  child: Container(
                                    height: 26.w,
                                    width: 26.w,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image:
                                            AssetImage('images/my_image.jpg'),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20.h),
                                  child: Text(
                                    '¿Qué estas pensando, Mao?',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: const Color(0xff8E97B7)),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 22.h),
                              child: Container(
                                height: 20.w,
                                width: 20.w,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: svg.Svg('icons/smile_icon.svg'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 64.h),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Expanded(
                              child: MyWidgetButton(
                                  imagePath: 'icons/camera_photo_icon.svg',
                                  title: 'Fotos'),
                            ),
                            Expanded(
                              child: MyWidgetButton(
                                  imagePath: 'icons/camera_video_icon.svg',
                                  title: 'En vivo'),
                            ),
                            Expanded(
                              child: MyWidgetButton(
                                  imagePath: 'icons/live_eye_icon.svg',
                                  title: 'Video corto'),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff8291B4).withOpacity(0.16),
                        //spreadRadius: 60,
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                        // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.r),
                        bottomRight: Radius.circular(16.r)),
                  ),
                ),
                SizedBox(
                  height: 142.7.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.7.w),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      children: [
                        ListView(
                          padding: EdgeInsets.only(bottom: 150.h),
                          shrinkWrap: true,
                          children: [
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text('FUCK THE WORLD'),
                            Text(
                              'FUCK THE WORLD',
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(
        topLeftRadius: 24.r,
        topRightRadius: 24.r,
        boxShadow: MyBoxShadow(
          x: 0,
          y: 3,
          spreadRadius: 0,
          blurRadius: 6,

          color: const Color(0xff8291B4).withOpacity(0.16),
          //opacity: 0.16,
        ),
        currentPageNumber: 5,
        //bgColor: Colors.black,
        height: 73.h,
        navIconList: [
          NavBarIcon(
            icon: SvgPicture.asset('icons/home_icon.svg'),
            onClick: () {},
            width: 100,
          ),
          NavBarIcon(
            icon: SvgPicture.asset('icons/youtube_icon.svg'),
            onClick: () {},
            width: 100,
          ),
          NavBarIcon(
            icon: SvgPicture.asset('icons/trolley_icon.svg'),
            onClick: () {},
            width: 100,
          ),
          NavBarIcon(
            icon: SvgPicture.asset('icons/group_icon.svg'),
            onClick: () {},
            width: 100,
          ),
          NavBarIcon(
            icon: SvgPicture.asset('icons/cubic_icon.svg'),
            onClick: () {},
            width: 100,
          ),
        ],
      ),
    );
  }
}
