import 'package:flutter/material.dart';

class GreyCircularWidget extends StatelessWidget {
  final Widget? icon;
  final Color color;
  final double height, width;
  const GreyCircularWidget({
    Key? key,
    this.icon,
    this.color = const Color(0xffFAFAFA),
    this.height = 37,
    this.width = 37,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: icon ?? const SizedBox(),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
