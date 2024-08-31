import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Constant/height_width.dart';

class AddDetails extends StatefulWidget {
  const AddDetails({super.key});

  @override
  State<AddDetails> createState() => _AddDetailsState();
}

final ScrollController _scrollController = ScrollController();

class _AddDetailsState extends State<AddDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Auth_background.jpg"),
                  fit: BoxFit.cover)),
        ),
        SingleChildScrollView(
          controller: _scrollController,
          child: Container(
            height: height(context, 1.5),
            width: width(context, 1.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 100, bottom: 70),
                    child: Image.asset(
                      'assets/images/App_logo.png',
                      width: 180,
                      height: 90,
                    )),
                Container(
                  height: height(context, 0.50),
                  width: width(context, 0.85),
                  margin:
                      EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 10),
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              'Please Enter The Details To Begin',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4)),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Container(
                                      padding: EdgeInsets.only(
                                          top: 18,
                                          bottom: 18,
                                          left: 15,
                                          right: 15),
                                      child: SvgPicture.asset(
                                        'assets/Svgs/Person_outlined.svg',
                                      )),
                                  hintText: 'Name',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 101, 100, 100),
                                  ),
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 12),
                                ),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4)),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Container(
                                      padding: EdgeInsets.only(
                                          top: 18,
                                          bottom: 18,
                                          left: 15,
                                          right: 15),
                                      child: SvgPicture.asset(
                                        'assets/Svgs/Email_outlined.svg',
                                      )),
                                  hintText: 'Email id',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 101, 100, 100),
                                  ),
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 12),
                                ),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4)),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Container(
                                    padding: EdgeInsets.only(
                                        top: 18,
                                        bottom: 18,
                                        left: 15,
                                        right: 15),
                                    child: SvgPicture.asset(
                                      'assets/Svgs/Pin_outlined.svg',
                                    ),
                                  ),
                                  hintText: 'Chennai, Tamilnadu',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 101, 100, 100),
                                  ),
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 12),
                                ),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(height: 25),
                            SizedBox(
                              height: 50,
                              width: width(context, 0.8),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  backgroundColor:
                                      const Color.fromRGBO(12, 115, 255, 1),
                                ),
                                child: Text(
                                  "Continue",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
