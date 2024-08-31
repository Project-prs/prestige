import 'package:flutter/material.dart';
import 'package:prestige/Constant/colors.dart';
import 'package:prestige/Constant/height_width.dart';
import 'package:prestige/Screens/Home/Home_Components/destinations.dart';

class Upcoming extends StatefulWidget {
  const Upcoming({super.key});

  @override
  State<Upcoming> createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
      8,
      (index) => Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        height: 140,
        width: double.infinity,
        child: Row(
          children: [
            Stack(alignment: Alignment.bottomCenter, children: [
              Container(
                width: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/hotel_1.png"),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: 140,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(5)),
                ),
                child: Center(
                  child: Text(
                    "Payment Pending",
                    style: TextStyle(color: white_color),
                  ),
                ),
              ),
            ]),
            SizedBox(width: 10),
            Container(
              width: 210,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Grand Resort Taj Hotel In...',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 29, 28, 28)),
                  ),
                  Container(
                    height: 30,
                    child: Row(children: [
                      Icon(
                        Icons.location_on,
                        size: 13,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: "Arumbakkam Tamilnadu, ind..",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        )
                      ]))
                    ]),
                  ),
                  Container(
                    height: 35,
                    width: width(context, 0.4),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 253, 191, 97),
                              Color.fromARGB(255, 227, 158, 55),
                              Color.fromARGB(255, 216, 141, 28),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            size: 20,
                            color: white_color,
                          ),
                          Text(
                            "Dec 24- Dec 25 | 1N",
                            style: TextStyle(
                                color: white_color,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.person_outlined,
                            size: 20,
                            color: white_color,
                          ),
                          Text(
                            "02",
                            style: TextStyle(
                                color: white_color,
                                fontWeight: FontWeight.w500),
                          )
                        ]),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "₹2000",
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "/Night",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "( ₹3000 |",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      " 33% off )",
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                )
                              ]),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: kPrimaryColor),
                              child: Center(
                                  child: Text(
                                "Pay Now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ))),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
