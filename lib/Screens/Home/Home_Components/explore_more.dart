import 'package:flutter/material.dart';
import 'package:prestige/Screens/Home/Home_Components/explore_more_bloc.dart';

class ExploreMore extends StatefulWidget {
  const ExploreMore({super.key});

  @override
  State<ExploreMore> createState() => _ExploreMoreState();
}

class _ExploreMoreState extends State<ExploreMore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, top: 15),
            child: Text(
              'Explore More',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(56, 56, 56, 1),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            child: OrientationBuilder(
              builder: (context, orientation) {
                return GridView.count(
                  crossAxisCount: (orientation == Orientation.portrait) ? 2 : 4,
                  childAspectRatio: 160 / 213,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: List.generate(
                    8,
                    (index) {
                      if ((orientation == Orientation.portrait) &&
                          (index % 2 == 1)) {
                        return Container(
                          child: Transform.translate(
                            offset: Offset(0, 40),
                            child: ExploreMoreBloc(),
                          ),
                        );
                      } else {
                        return Container(child: ExploreMoreBloc());
                      }
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
