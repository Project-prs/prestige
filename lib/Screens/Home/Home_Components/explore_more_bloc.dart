import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExploreMoreBloc extends StatefulWidget {
  const ExploreMoreBloc({super.key});

  @override
  State<ExploreMoreBloc> createState() => _ExploreMoreBlocState();
}

class _ExploreMoreBlocState extends State<ExploreMoreBloc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        width: 114,
        child: Stack(
          children: [
            Container(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/images/City_1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(73, 0, 0, 0),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: const EdgeInsets.all(6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.blue,
                          size: 12,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Romantic Place',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/Svgs/Location.svg',
                            // ignore: deprecated_member_use
                            color: Colors.white,
                            height: 16,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Paris',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
