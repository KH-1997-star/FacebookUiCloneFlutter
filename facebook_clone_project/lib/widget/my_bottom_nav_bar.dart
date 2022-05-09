import 'package:flutter/material.dart';

class MyBottomNavBar extends StatefulWidget {
  final double? height,
      bottomLeftRadius,
      bottomRightRadius,
      topRightRadius,
      topLeftRadius;
  final Color bgColor;
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
      alignment: Alignment.center,
      height: widget.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          widget.navIconList.length,
          (index) => InkWell(
            onTap: () {
              unselectList(index);
            },
            child: Container(
                width: widget.navIconList[index].width,
                height: widget.navIconList[index].height + 4,
                decoration: BoxDecoration(
                  color: boolList[index] ? Colors.red : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: widget.navIconList[index]),
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
    this.width = 50,
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
    print(MyBottomNavBar(
      navIconList: [],
      currentPageNumber: 1,
    ).getHeight);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          widget.icon ?? const SizedBox(),
          const Text(
            'home',
            style: TextStyle(
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
