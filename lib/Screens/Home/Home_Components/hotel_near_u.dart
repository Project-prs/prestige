import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../Constant/colors.dart';

class HotelNearU extends StatelessWidget {
  const HotelNearU({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: const Color(0xFFFFFFFF),
      ),
      margin: const EdgeInsets.only(left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            width: 172,
            child: Stack(
              children: [
                Container(
                  height: 110,
                ),
                Container(
                  height: 96,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage("assets/images/hotel_1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(20)),
                            child: InkWell(
                              splashColor: Colors.lightBlue,
                              onTap: () {},
                              child: Icon(
                                Icons.favorite,
                                size: 12,
                                color: Colors.blue,
                              ),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 45, left: 10),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(234, 255, 255, 255),
                              borderRadius: BorderRadius.circular(7)),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/Svgs/Loaction.svg'),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '4 km away',
                                style: const TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 45, right: 10),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: const Color(0xFF0E8921),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 12,
                              ),
                              Text(
                                "4.2",
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              width: 172,
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Grand Resort Taj Hotel In..",
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "₹2000/",
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                color: kPrimaryColor,
                              ),
                            ),
                            const TextSpan(
                              text: 'Night',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '( ₹3000 | ',
                              style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 8,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF8E8E8E),
                              ),
                            ),
                            TextSpan(
                              text: '33% Off )',
                              style: const TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF4275C9),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 0.5,
                      )
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
