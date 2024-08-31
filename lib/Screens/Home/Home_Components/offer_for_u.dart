import 'package:flutter/material.dart';

class OfferForU extends StatefulWidget {
  const OfferForU({super.key});

  @override
  State<OfferForU> createState() => _OfferForUState();
}

class _OfferForUState extends State<OfferForU> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
              image: AssetImage("assets/images/hotel_1.png"),
              fit: BoxFit.cover)),
      margin: const EdgeInsets.only(left: 10),
      padding: EdgeInsets.only(left: 5, right: 5),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "New  Year Special Offer",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 255, 230, 3))),
              ])),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Get Flat 50% offer On Yor First Flight",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    )),
                TextSpan(
                    text: "for Maldrives",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ))
              ]))
            ],
          )
        ],
      ),
    );
  }
}
