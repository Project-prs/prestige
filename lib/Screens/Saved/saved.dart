import 'package:flutter/material.dart';
import 'package:prestige/Screens/Saved/Saved_Components/appbar.dart';
import 'package:prestige/Screens/Saved/Saved_Components/saved_place_body.dart.dart';

import '../../Constant/height_width.dart';

class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: width(context, 1),
              color: const Color.fromRGBO(247, 250, 255, 1),
              child: Column(
                children: [SizedBox(height: 130), SavedPlaceBody()],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(color: Colors.transparent, child: CustomAppBar()),
          )
        ],
      ),
    );
  }
}
