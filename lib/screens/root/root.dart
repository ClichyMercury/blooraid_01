import 'package:blooraid_01/screens/mainpage/homepage.dart';
import 'package:blooraid_01/screens/mainpage/views/myPrivacy.dart';
import 'package:blooraid_01/screens/mainpage/views/mySecurity.dart';
import 'package:blooraid_01/screens/mainpage/views/myVault.dart';
import 'package:blooraid_01/screens/mainpage/views/mydevice.dart';
import 'package:blooraid_01/widgets/animation/custom_opacity_animation.dart';
import 'package:blooraid_01/widgets/bottomNavigationBar/custtom_navigation_bar.dart';
import 'package:blooraid_01/widgets/constant.dart';
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
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Xiemie",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: pink,
              fontSize: 33,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              gradient: LinearGradient(
                colors: [bleu, pink],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 40,
                ))
          ]),
      body: CustomOpacityAnimation(
        child: PageView(
          controller: pageController,
          onPageChanged: (index) => onPageChanged(index),
          padEnds: false,
          physics: const BouncingScrollPhysics(),
          children: const [
            MyHomePage(),
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
