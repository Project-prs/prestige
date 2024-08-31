import 'package:flutter/material.dart';
import 'package:prestige/Constant/height_width.dart';
import 'package:prestige/Screens/Home/Home_Components/appbar.dart';

import 'Home_Components/home_body.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                children: [SizedBox(height: 170), HomeBody()],
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
