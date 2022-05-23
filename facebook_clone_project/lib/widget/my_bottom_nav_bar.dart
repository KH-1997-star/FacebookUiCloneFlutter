import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBottomNavBar extends StatefulWidget {
  final double? height,
      bottomLeftRadius,
      bottomRightRadius,
      topRightRadius,
      topLeftRadius;
  final Color bgColor;
  final Color? focusedColor;
  final List<NavBarIcon> navIconList;
  final int currentPageNumber;
  final MyBoxShadow? boxShadow;

  const MyBottomNavBar({
    Key? key,
    this.height = 100,
    this.bgColor = Colors.white,
    required this.navIconList,
    required this.currentPageNumber,
    this.boxShadow,
    this.bottomLeftRadius = 0.0,
    this.bottomRightRadius = 0.0,
    this.topRightRadius = 0.0,
    this.topLeftRadius = 0.0,
    this.focusedColor,
  }) : super(key: key);
  get getHeight => height;

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  List<bool> boolList = [];
  unselectList(int index) {
    for (int i = 0; i < boolList.length; i += 1) {
      if (i == index) {
        setState(() {
          boolList[i] = true;
        });
      } else if (i != index && boolList[i] != false) {
        setState(() {
          boolList[i] = false;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.navIconList.length; i += 1) {
      i == widget.currentPageNumber ? boolList.add(true) : boolList.add(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < widget.navIconList.length; i += 1) {
      i == 0 ? boolList.add(true) : boolList.add(false);
    }
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 29.w),
      alignment: Alignment.center,
      height: widget.height,
      child: Row(
        children: List.generate(
          widget.navIconList.length,
          (index) => Expanded(
            child: InkWell(
              onTap: () {
                unselectList(index);
              },
              child: Container(
                  width: widget.navIconList[index].width,
                  height: widget.navIconList[index].height + 4,
                  decoration: BoxDecoration(
                    color: widget.focusedColor ?? Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: widget.navIconList[index]),
            ),
          ),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: widget.bgColor,
        boxShadow: [
          BoxShadow(
            color: widget.boxShadow?.color ?? Colors.transparent,
            blurRadius:
                widget.boxShadow?.blurRadius ?? MyBoxShadow().blurRadius,
            spreadRadius:
                widget.boxShadow?.spreadRadius ?? MyBoxShadow().getSpreadRadius,
            offset: Offset(widget.boxShadow?.x ?? MyBoxShadow().getXshadow,
                widget.boxShadow?.y ?? MyBoxShadow().getYshadow),
          ),
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(widget.bottomLeftRadius!),
          bottomRight: Radius.circular(widget.bottomRightRadius!),
          topLeft: Radius.circular(widget.topLeftRadius!),
          topRight: Radius.circular(widget.topRightRadius!),
        ),
      ),
    );
  }
}

class NavBarIcon extends StatefulWidget {
  final double height, width;
  final String title;
  final Color bgColor;
  final Widget? icon;
  final VoidCallback onClick;

  const NavBarIcon({
    Key? key,
    this.height = 50,
    this.width = 100,
    this.title = '',
    this.bgColor = Colors.transparent,
    required this.onClick,
    this.icon,
  }) : super(key: key);

  @override
  State<NavBarIcon> createState() => _NavBarIconState();
}

class _NavBarIconState extends State<NavBarIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget.icon ?? const SizedBox(),
          widget.title == ''
              ? const SizedBox()
              : Text(
                  widget.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                )
        ],
      ),
    );
  }
}

class MyBoxShadow {
  final double x, y, blurRadius, spreadRadius;
  final Color color;
  MyBoxShadow({
    this.spreadRadius = 8,
    this.x = 0,
    this.y = 3,
    this.blurRadius = 7,
    this.color = const Color(0xff9e9e9e),
  });

  get getSpreadRadius => spreadRadius;
  get getXshadow => x;
  get getYshadow => y;
  get getColorShadow => color;
}

/* class SomeWhereIcon extends StatelessWidget {
  final Color? color;
final Widget? icon;
  const SomeWhereIcon(this.color,  this.icon, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget myIcon;
    IconData icon  ;
    icon.runtimeType;
    icon.hashCode == Icon
    return 
  }
}
BottomAppBar bottomAppBar;
 */