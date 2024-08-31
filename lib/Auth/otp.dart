import 'dart:ui';

import 'package:flutter/material.dart';

import '../Constant/colors.dart';
import '../Constant/height_width.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

final ScrollController _scrollController = ScrollController();

class _OtpState extends State<Otp> {
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
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                    margin: EdgeInsets.only(top: 100, bottom: 70),
                    child: Image.asset(
                      'assets/images/App_logo.png',
                      width: 180,
                      height: 90,
                    )),
                Container(
                  height: height(context, 0.40),
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
                              'Verify OTP',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Enter the code sent to +91 903432342',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                    margin: const EdgeInsets.all(5),
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Icon(
                                      Icons.edit,
                                      color: kPrimaryColor,
                                      size: 14,
                                    )),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.transparent,
                            ),
                            padding: const EdgeInsets.all(5),
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                    6,
                                    (index) => Container(
                                        height: 50,
                                        width: 50,
                                        padding: EdgeInsets.only(
                                            left: 6, right: 5, bottom: 3),
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          maxLength: 1,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                          decoration: const InputDecoration(
                                            counterText: '',
                                            border: InputBorder.none,
                                          ),
                                        ))),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                backgroundColor:
                                    const Color.fromRGBO(12, 115, 255, 1),
                              ),
                              child: Center(
                                child: Text(
                                  "Next",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "00:00",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Text(
                                "Resend",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  )),
                )
              ])))
    ]));
  }
}
