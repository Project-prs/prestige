import 'package:flutter/material.dart';
import 'package:prestige/Screens/Home/Home_Components/destinations.dart';

class NumCounterDialog extends StatefulWidget {
  const NumCounterDialog({super.key});

  @override
  State<NumCounterDialog> createState() => _NumCounterDialogState();
}

class _NumCounterDialogState extends State<NumCounterDialog> {
  static int roomCounter = 1;
  static int adultCounter = 1;
  static int childrenCounter = 0;

  int maxRoom = 8;
  int maxAdult = 2;
  int maxChild = 4;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Select Rooms And Guests',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFCCCCCC),
                    ),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Number of rooms",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Container(
                  width: 130,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 1, color: Colors.blue)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: roomCounter == 1
                              ? Color.fromARGB(255, 153, 197, 233)
                              : Colors.blue,
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              if (roomCounter > 1) {
                                setState(() {
                                  roomCounter = roomCounter - 1;
                                });
                              }
                            },
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "0${roomCounter}",
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: roomCounter == 8
                              ? Color.fromARGB(255, 153, 197, 233)
                              : Colors.blue,
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              if (roomCounter < maxRoom) {
                                setState(() {
                                  roomCounter = roomCounter + 1;
                                });
                              }
                            },
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Adults",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Container(
                  width: 130,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 1, color: Colors.blue)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: adultCounter == 1
                              ? Color.fromARGB(255, 153, 197, 233)
                              : Colors.blue,
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              if (adultCounter > 1) {
                                setState(() {
                                  adultCounter = adultCounter - 1;
                                });
                              }
                            },
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "0${adultCounter}",
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: adultCounter == 2
                              ? Color.fromARGB(255, 153, 197, 233)
                              : Colors.blue,
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              if (adultCounter < maxAdult) {
                                setState(() {
                                  adultCounter = adultCounter + 1;
                                });
                              }
                            },
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Childrens",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Container(
                  width: 130,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 1, color: Colors.blue)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: childrenCounter == 0
                                ? Color.fromARGB(255, 153, 197, 233)
                                : Colors.blue),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              if (childrenCounter > 0) {
                                setState(() {
                                  childrenCounter = childrenCounter - 1;
                                });
                              }
                            },
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "0${childrenCounter}",
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: childrenCounter == maxChild
                              ? Color.fromARGB(255, 153, 197, 233)
                              : Colors.blue,
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              if (childrenCounter < maxChild) {
                                setState(() {
                                  childrenCounter = childrenCounter + 1;
                                });
                              }
                            },
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                room = roomCounter;
                adult = adultCounter;
                child = childrenCounter;
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                backgroundColor: const Color.fromRGBO(12, 115, 255, 1),
              ),
              child: Text(
                "Apply",
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          ),
          SizedBox(height: 15)
        ]),
      ),
    );
  }
}
