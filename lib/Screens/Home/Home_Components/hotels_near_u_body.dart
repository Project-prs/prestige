import 'package:flutter/material.dart';
import 'package:prestige/Screens/Home/Home_Components/hotel_near_u.dart';

import '../../../Constant/height_width.dart';

class HotelNearUBody extends StatefulWidget {
  const HotelNearUBody({super.key});

  @override
  State<HotelNearUBody> createState() => _HotelNearUBodyState();
}

class _HotelNearUBodyState extends State<HotelNearUBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: width(context, 0.9),
            height: 60,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hotels Near Me',
                  style: TextStyle(
                      color: Color.fromRGBO(56, 56, 56, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(
                      color: Color.fromRGBO(56, 56, 56, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 170,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => HotelNearU()),
          ),
        ],
      ),
    );
  }
}
