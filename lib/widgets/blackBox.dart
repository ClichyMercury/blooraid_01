import 'package:blooraid_01/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class BlackBox extends StatelessWidget {
  const BlackBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [firstRow(), secondRow(), chart(context), dateRow()],
        ),
      ),
    );
  }

  Padding dateRow() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Sun",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Mon",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Tue",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Wed",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Thu",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Fri",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  SizedBox chart(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              bandChart(context, 100),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              bandChart(context, 25),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              bandChart(context, 60),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              bandChart(context, 125),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 175,
                width: MediaQuery.of(context).size.width / 7.35,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [pink, bleu],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              bandChart(context, 150),
            ],
          ),
        ],
      ),
    );
  }

  Row secondRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "\$467.98",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ),
        Container(
          height: 60,
          width: 110,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: const Center(
            child: Text(
              "\$32 below\nlast week",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }

  Row firstRow() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Spending",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Row(
          children: [
            Text(
              "This Week",
              style: TextStyle(color: Colors.white),
            ),
            Icon(
              LineAwesomeIcons.arrow_down,
              color: Colors.white,
            )
          ],
        )
      ],
    );
  }

  Container bandChart(BuildContext context, double height) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width / 7.35,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
    );
  }
}
