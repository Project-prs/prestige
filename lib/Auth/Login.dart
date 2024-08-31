import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prestige/Constant/height_width.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

final ScrollController _scrollController = ScrollController();

class _LoginState extends State<Login> {
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
                  height: height(context, 0.45),
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
                                'Login',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              'Please Enter Your Mobile Number to get the OTP',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.phone_android_sharp,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    "+91",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    width: 1,
                                    height: 15,
                                    color: Color(0xFF707070),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Center(
                                        child: TextField(
                                          decoration: InputDecoration(
                                              hintText: 'Mobile Number',
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
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
                                  "VERIRY",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              height: 50,
                              child: Center(
                                child: RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                    text: 'By logging in, you agree to our ',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Terms & Privacy Policy',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ])),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 400,
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
