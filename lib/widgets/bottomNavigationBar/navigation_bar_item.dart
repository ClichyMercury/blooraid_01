import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  final IconData icon;
  final int currentIndex;
  final int index;
  final void Function(int) changeIndex;
  // final int index;
  // final int selectedIndex;

  const NavigationBarItem(
      {Key? key,
      required this.icon,
      required this.currentIndex,
      required this.changeIndex,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = currentIndex == index;
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white.withOpacity(0.2),
          onTap: () {
            changeIndex(index);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: isSelected ? Colors.white : Colors.black87),
              child: Icon(
                icon,
                color: isSelected ? Colors.black87 : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
