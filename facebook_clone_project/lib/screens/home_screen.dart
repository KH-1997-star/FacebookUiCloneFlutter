import 'package:facebook_clone_project/widget/grey_circular_container.dart';
import 'package:facebook_clone_project/widget/my_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FacebookHomeScreen extends StatelessWidget {
  const FacebookHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 17.w),
          child: SvgPicture.asset('icons/facebook_icon.svg'),
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
              SizedBox(
                width: 12.w,
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
      body: Column(
        children: [
          Opacity(
            opacity: 0.06,
            child: Divider(
              height: 0.8,
              color: Color(0xff707070),
              thickness: 1,
            ),
          ),
          MyBottomNavBar(
            bottomLeftRadius: 16.r,
            bottomRightRadius: 16.r,
            boxShadow: MyBoxShadow(
              x: 0,
              y: 3,
              spreadRadius: 0,
              blurRadius: 6,
              color: Color(0xff8291B4).withOpacity(0.16),
              //opacity: 0.16,
            ),
            currentPageNumber: 0,
            //bgColor: Colors.black,
            height: 50.h,
            navIconList: [
              /*  NavBarIcon(
                bgColor: Colors.white,
                onClick: () {},
              ),
              NavBarIcon(
                bgColor: Colors.white,
                onClick: () {},
              ),
              NavBarIcon(
                bgColor: Colors.white,
                onClick: () {},
              ),
              NavBarIcon(
                bgColor: Colors.white,
                onClick: () {},
              ),
              NavBarIcon(
                bgColor: Colors.white,
                onClick: () {},
              ),
              NavBarIcon(
                bgColor: Colors.white,
                onClick: () {},
              ), */
            ],
          )
          /*   BottomNavigationBar(type: BottomNavigationBarType.shifting, items: [
            BottomNavigationBarItem(
              label: '',
              icon: SvgPicture.asset('icons/home_icon.svg'),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: SvgPicture.asset('icons/home_icon.svg'),
            ),
          ]) */
        ],
      ),
    );
  }
}
