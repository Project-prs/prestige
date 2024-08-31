import 'package:flutter/material.dart';

import '../../../Constant/height_width.dart';
import 'saved_places.dart';

class SavedPlaceBloc extends StatefulWidget {
  const SavedPlaceBloc({super.key});

  @override
  State<SavedPlaceBloc> createState() => _SavedPlaceBlocState();
}

class _SavedPlaceBlocState extends State<SavedPlaceBloc> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width(context, 0.9),
        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Chennai ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: '| 03',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 4, 4, 4),
                    ),
                  ),
                ]),
              ),
              SizedBox(height: 15),
              Container(
                height: 170,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) => SavedPlaces()),
              )
            ]));
  }
}
