import 'package:blooraid_01/screens/mainpage/views/homeAlterHis.dart';
import 'package:blooraid_01/screens/mainpage/views/MonReseau/myPrivacy.dart';
import 'package:blooraid_01/screens/mainpage/views/MaS%C3%A9curit%C3%A9/mySecurity.dart';
import 'package:blooraid_01/screens/mainpage/views/assistance/myVault.dart';
import 'package:blooraid_01/screens/mainpage/views/MesAppareils/mydevice.dart';
import 'package:blooraid_01/widgets/animation/custom_opacity_animation.dart';
import 'package:blooraid_01/widgets/bottomNavigationBar/custtom_navigation_bar.dart';
import 'package:flutter/material.dart';


class Root extends StatefulWidget {
  const Root({
    Key? key,
  }) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  late PageController pageController;

  int currentIndex = 0;

  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
    pageController.animateToPage(currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomOpacityAnimation(
        child: PageView(
          controller: pageController,
          onPageChanged: (index) => onPageChanged(index),
          padEnds: false,
          physics: const BouncingScrollPhysics(),
          children: const [
            AlterHisHome(),
            MySecurity(),
            MyPrivacy(),
            MyDevice(),
            MyVault()
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        changeIndex: changeIndex,
        currentIndex: currentIndex,
      ),
    );
  }
}
