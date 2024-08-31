import 'package:flutter/material.dart';
import 'package:prestige/Screens/Home/Home_Components/hotels_near_u_body.dart';
import 'package:prestige/Screens/Home/Home_Components/offer_for_u_body.dart';
import 'package:prestige/Screens/Home/Home_Components/recent_search_body.dart';

import 'destinations.dart';
import 'explore_more.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Destinations(),
        RecentSearchBody(),
        HotelNearUBody(),
        OfferForUBody(),
        ExploreMore()
      ],
    );
  }
}
