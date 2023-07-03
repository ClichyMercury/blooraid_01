import 'package:blooraid_01/screens/mainpage/views/MaS%C3%A9curit%C3%A9/passwordManager/widgets/ajouter.dart';
import 'package:blooraid_01/screens/mainpage/views/MaS%C3%A9curit%C3%A9/passwordManager/widgets/controller.dart';
import 'package:blooraid_01/widgets/constant.dart';
import 'package:blooraid_01/widgets/myCustumAppbar.dart';
import 'package:flutter/material.dart';

class PasswordManager extends StatefulWidget {
  const PasswordManager({super.key});

  @override
  State<PasswordManager> createState() => _PasswordManagerState();
}

class _PasswordManagerState extends State<PasswordManager>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(vsync: this, length: 3);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: myCustumAppBar("Gestionnaire de MDP"),
        body: Column(
          children: [
            TabBar(
              indicatorColor: pink,
              padding: EdgeInsets.all(5),
              labelPadding: EdgeInsets.symmetric(horizontal: 10),
              controller: _tabController,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              indicator: CircleTabIndicator(color: Colors.black, radius: 5),
              tabs: [
                Tab(text: "Ajoutez"),
                Tab(
                  text: "controllez",
                )
              ],
            ),
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                    controller: _tabController,
                    children: [Ajouter(), Controller()]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;

  _CirclePainter({required this.radius, required this.color});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    late Paint _paint;
    _paint = Paint()..color = color;
    _paint = _paint..isAntiAlias = true;
    final Offset circleOffset = offset +
        Offset(
            configuration.size!.width / 2, configuration.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
