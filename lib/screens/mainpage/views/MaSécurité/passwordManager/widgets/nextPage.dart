import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Text(
                "Accès",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black),
                child: Center(
                    child: Text(
                  "2",
                  style: TextStyle(color: Colors.white),
                )),
              )
            ],
          ),
          MyListTile(
            number: "1",
            text: "Facebook",
            data: "19/03/2021",
            price: "9.99",
            ontap: () {},
          ),
          MyListTile(
            number: "2",
            text: "gIThUB",
            data: "19/05/2021",
            price: "9.99",
            ontap: () {},
          ),
        ],
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile({
    super.key,
    required this.text,
    required this.data,
    required this.price,
    required this.number,
    required this.ontap,
  });

  final String text;
  final String data;
  final String price;
  final String number;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ontap,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          padding: const EdgeInsets.all(10),
          height: 90,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 244, 245, 249),
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        number,
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        data,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ],
              ),
              /* Text(
                "-\$$price",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ), */
            ],
          ),
        ));
  }
}
