import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../Constant/height_width.dart';
import 'num_counter_dialog.dart';

class Destinations extends StatefulWidget {
  const Destinations({super.key});

  @override
  State<Destinations> createState() => _DestinationsState();
}

String startDateTime = "";
String endDateTime = "";
String dateRangePlaceHolder = "Tue 22 Nov - Wed 23 Nov";

int room = 1;
int adult = 1;
int child = 0;

class _DestinationsState extends State<Destinations> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 3, left: 10, right: 10),
      padding: const EdgeInsets.all(20),
      width: width(context, 0.9),
      height: height(context, 0.33),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFF9F9F9),
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
            child: TextField(
              autofocus: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: const TextStyle(
                    color: Color(
                      0xFF101010,
                    ),
                    fontSize: 14,
                    fontFamily: 'Roboto'),
                hintText: 'Enter Your Destination',
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SvgPicture.asset(
                    'assets/Svgs/Search_location.svg',
                    width: 6,
                    height: 6,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              FocusScope.of(context).unfocus();
              showDateRangePicker(
                context: context,
                firstDate: DateTime.now(),
                lastDate: DateTime(DateTime.now().year + 1,
                    DateTime.now().month, DateTime.now().day),
              ).then((value) {
                if (value != null) {
                  startDateTime = DateFormat("yyyy-MM-dd").format(value.start);
                  endDateTime = DateFormat("yyyy-MM-dd").format(value.end);
                  String stringStart =
                      DateFormat('EEE dd MMM').format(value.start);
                  String stringEnd = DateFormat('EEE dd MMM').format(value.end);
                  setState(() {
                    dateRangePlaceHolder = "$stringStart - $stringEnd";
                  });
                }
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF9F9F9),
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SvgPicture.asset(
                      'assets/Svgs/Calender_search.svg',
                      width: 16,
                      height: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    dateRangePlaceHolder,
                    style: const TextStyle(
                        color: Color(
                          0xFF101010,
                        ),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              await showDialog(
                  context: context, builder: (context) => NumCounterDialog());
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF9F9F9),
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SvgPicture.asset(
                      'assets/Svgs/Person_search.svg',
                      width: 16,
                      height: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "${room} Room | ${adult} Adults | ${child} Children",
                    style: const TextStyle(
                        color: Color(
                          0xFF101010,
                        ),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                backgroundColor: Color.fromARGB(255, 32, 108, 216),
              ),
              child: Text(
                "Search",
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
