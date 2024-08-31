import 'package:flutter/material.dart';
import 'package:prestige/Screens/Home/Home_Components/offer_for_u.dart';

import '../../../Constant/height_width.dart';

class OfferForUBody extends StatefulWidget {
  const OfferForUBody({super.key});

  @override
  State<OfferForUBody> createState() => _OfferForUBodyState();
}

class _OfferForUBodyState extends State<OfferForUBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width(context, 0.9),
          height: 60,
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Offer For You',
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
          height: 110,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => OfferForU()),
        ),
      ],
    );
  }
}
