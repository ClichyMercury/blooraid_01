import 'package:blooraid_01/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class BlackBox extends StatelessWidget {
  const BlackBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                      colors: [bleu, pink],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                  child: Icon(
                    Icons.tips_and_updates,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "Astuces",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Comment sécuriser son compte ?",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse bibendum aliquet lorem, ut suscipit purus molestie et. Praesent aliquet risus a dapibus vehicula.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Column(
                  children: [
                    Text(
                      "Plus",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            )
          ],
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
