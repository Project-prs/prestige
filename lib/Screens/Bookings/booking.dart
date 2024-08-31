import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prestige/Constant/height_width.dart';

import 'Booking_Components/cancelled.dart';
import 'Booking_Components/checkout.dart';
import 'Booking_Components/upcoming.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

int tapIndex = 0;

List<Widget> screens = [
  Upcoming(),
  Checkout(),
  Cancelled(),
];

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(47, 131, 245, 1),
                  Color.fromRGBO(25, 64, 129, 1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(top: height(context, 0.04)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        child: Text(
                          'My Bookings',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            tapIndex = 0;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 20, left: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: (tapIndex == 0)
                                ? const Color.fromARGB(75, 96, 162, 255)
                                : Colors.transparent,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(28),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: const Text(
                                'Upcoming',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            tapIndex = 1;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 20, left: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: (tapIndex == 1)
                                ? const Color.fromARGB(75, 96, 162, 255)
                                : Colors.transparent,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(28),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: const Text(
                                'Checked Out',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            tapIndex = 2;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, right: 20, left: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: (tapIndex == 2)
                                ? const Color.fromARGB(75, 96, 162, 255)
                                : Colors.transparent,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(28),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: const Text(
                                'Cancelled',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          screens[tapIndex],
        ],
      ),
    );
  }
}
