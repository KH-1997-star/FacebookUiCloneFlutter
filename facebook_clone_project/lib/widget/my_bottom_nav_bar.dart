import 'package:flutter/material.dart';

class MyBottomNavBar extends StatefulWidget {
  final double height;
  final Color bgColor;
  final List<NavBarIcon> navIconList;

  const MyBottomNavBar({
    Key? key,
    this.height = 100,
    this.bgColor = Colors.white,
    required this.navIconList,
  }) : super(key: key);

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
      i == 0 ? boolList.add(true) : boolList.add(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: widget.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          widget.navIconList.length,
          (index) => InkWell(
            onTap: () {
              print(index);
              unselectList(index);
            },
            child: Container(
                width: widget.navIconList[index].width,
                height: widget.navIconList[index].height - 9,
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
      ),
    );
  }
}

class NavBarIcon extends StatefulWidget {
  final double height, width;
  final String title;
  final Color bgColor;
  final VoidCallback onClick;

  const NavBarIcon({
    Key? key,
    this.height = 50,
    this.width = 50,
    this.title = '',
    this.bgColor = Colors.transparent,
    required this.onClick,
  }) : super(key: key);

  @override
  State<NavBarIcon> createState() => _NavBarIconState();
}

class _NavBarIconState extends State<NavBarIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.bgColor,
        ),
      ),
    );
  }
}
