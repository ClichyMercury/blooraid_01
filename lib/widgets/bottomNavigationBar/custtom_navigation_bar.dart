import 'package:flutter/material.dart';

import 'navigation_bar_item.dart';

class CustomNavigationBar extends StatefulWidget {
  final Function(int) changeIndex;
  final int currentIndex;
  const CustomNavigationBar({
    Key? key,
    required this.changeIndex,
    required this.currentIndex,
  }) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      // padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationBarItem(
            icon: Icons.home,
            changeIndex: widget.changeIndex,
            index: 0,
            currentIndex: widget.currentIndex,
          ),
          NavigationBarItem(
            icon: Icons.security_outlined,
            changeIndex: widget.changeIndex,
            index: 1,
            currentIndex: widget.currentIndex,
          ),
          NavigationBarItem(
            icon: Icons.wifi,
            changeIndex: widget.changeIndex,
            index: 2,
            currentIndex: widget.currentIndex,
          ),
          NavigationBarItem(
            icon: Icons.watch,
            index: 3,
            currentIndex: widget.currentIndex,
            changeIndex: widget.changeIndex,
          ),
          NavigationBarItem(
            icon: Icons.call,
            index: 4,
            currentIndex: widget.currentIndex,
            changeIndex: widget.changeIndex,
          ),
        ],
      ),
    );
  }
}
