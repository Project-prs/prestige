import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prestige/Constant/height_width.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      color: Colors.transparent,
      child: Stack(children: [
        Container(
          height: 130,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(22, 85, 174, 1),
                Color.fromRGBO(26, 54, 103, 1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(top: height(context, 0.02)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: SvgPicture.asset('assets/Svgs/Drawer_icon.svg'),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  color: Colors.white,
                ),
                Container(
                    child: Image.asset(
                  'assets/images/App_logo.png',
                  width: 100,
                  height: 50,
                )),
                IconButton(
                  icon: SvgPicture.asset('assets/Svgs/Notification.svg'),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: 105.0,
            left: 20.0,
            right: 20.0,
            child: Container(
                height: 60,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset:
                            Offset(0, 4), // Controls the position of the shadow
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              SvgPicture.asset(
                                'assets/Svgs/building.svg',
                                // ignore: deprecated_member_use
                                color: Colors.blue,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                'Hotels',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 34, 126, 255),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(width: 5),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              backgroundColor:
                                  Color.fromARGB(255, 32, 108, 216),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                    'assets/Svgs/person_loaction.svg'),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Chennai, Tamilnadu',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 5)
                        ],
                      ),
                    ),
                  ),
                )))
      ]),
    );
  }
}
