import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import 'Screens/Bookings/booking.dart';
import 'Screens/Home/home.dart';
import 'Screens/Offer/offer.dart';
import 'Screens/Profile/profile.dart';
import 'Screens/Saved/saved.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

dynamic selected;
PageController Pagecontroller = PageController();

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            StylishBottomBar(
              items: [
                BottomBarItem(
                    icon: SvgPicture.asset('assets/Svgs/search_o.svg'),
                    selectedIcon: SvgPicture.asset('assets/Svgs/search_f.svg'),
                    selectedColor: const Color.fromARGB(255, 0, 106, 255),
                    title: const Text(
                      'Search',
                      style: TextStyle(
                          color: Color.fromARGB(200, 0, 0, 0),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )),
                BottomBarItem(
                    selectedIcon: SvgPicture.asset('assets/Svgs/heart_f.svg'),
                    icon: SvgPicture.asset('assets/Svgs/heart_o.svg'),
                    selectedColor: const Color.fromARGB(255, 0, 106, 255),
                    title: const Text(
                      'Saved',
                      style: TextStyle(
                          color: Color.fromARGB(200, 0, 0, 0),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )),
                BottomBarItem(
                    icon: SvgPicture.asset('assets/Svgs/suitcase_o.svg'),
                    selectedIcon:
                        SvgPicture.asset('assets/Svgs/suitcase_f.svg'),
                    selectedColor: const Color.fromARGB(255, 0, 106, 255),
                    title: const Text(
                      'Bookings',
                      style: TextStyle(
                          color: Color.fromARGB(200, 0, 0, 0),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )),
                BottomBarItem(
                    icon: SvgPicture.asset('assets/Svgs/discount_o.svg'),
                    selectedIcon:
                        SvgPicture.asset('assets/Svgs/discount_f.svg'),
                    selectedColor: const Color.fromARGB(255, 0, 106, 255),
                    title: const Text(
                      'Offers',
                      style: TextStyle(
                          color: Color.fromARGB(200, 0, 0, 0),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )),
                BottomBarItem(
                    icon: SvgPicture.asset('assets/Svgs/profile_o.svg'),
                    selectedIcon: SvgPicture.asset('assets/Svgs/profile_f.svg'),
                    selectedColor: const Color.fromARGB(255, 0, 106, 255),
                    title: const Text(
                      'Profile',
                      style: TextStyle(
                          color: Color.fromARGB(200, 0, 0, 0),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )),
              ],
              hasNotch: true,
              currentIndex: selected ?? 0,
              onTap: (index) {
                Pagecontroller.jumpToPage(index);
                setState(() {
                  selected = index;
                });
              },
              option: AnimatedBarOptions(
                iconStyle: IconStyle.Default,
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: Pagecontroller,
        onPageChanged: (value) {
          setState(() {
            selected = value;
          });
        },
        children: [
          const Home(),
          const Saved(),
          const Booking(),
          const Offer(),
          const Profile(),
        ],
      ),
    );
  }
}
