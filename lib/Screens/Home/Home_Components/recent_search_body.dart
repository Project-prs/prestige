import 'package:flutter/material.dart';
import 'package:prestige/Screens/Home/Home_Components/recent_searches.dart';

import '../../../Constant/height_width.dart';

class RecentSearchBody extends StatefulWidget {
  const RecentSearchBody({super.key});

  @override
  State<RecentSearchBody> createState() => _RecentSearchBodyState();
}

class _RecentSearchBodyState extends State<RecentSearchBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context, 0.9),
      height: 180,
      child: Column(
        children: [
          Container(
            height: 60,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Search',
                  style: TextStyle(
                      color: Color.fromRGBO(56, 56, 56, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      color: Color.fromRGBO(56, 56, 56, 1),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            height: 120,
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(47, 131, 245, 1),
                  Color.fromRGBO(25, 64, 129, 1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RecentSearches(),
                  RecentSearches(),
                  RecentSearches(),
                  RecentSearches(),
                  RecentSearches(),
                  RecentSearches(),
                  RecentSearches(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
