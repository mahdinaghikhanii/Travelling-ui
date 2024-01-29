import 'package:flutter/material.dart';

import 'widgets/destination.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 0,
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 0,
                child: Container(
                    height: 44,
                    padding: const EdgeInsets.only(
                        left: 4, top: 4, bottom: 4, right: 15),
                    decoration: ShapeDecoration(
                        color: const Color(0xFFF6F6F8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        )),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            'assets/me.jpg',
                            width: 37,
                            height: 37,
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.only(left: 6),
                            child: Text('Mahdi',
                                style: TextStyle(
                                  color: Color(0xFF1B1E28),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  height: 0.08,
                                )))
                      ],
                    )),
              ),
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color(0xFFF6F6F8)),
                child: const Icon(Icons.notifications_outlined),
              )
            ],
          ),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [titleText(), const DestinantionWidgets()]));
  }
}

Widget titleText() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
    width: 300,
    height: 99.58,
    child: const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Explore the',
            style: TextStyle(
              color: Color(0xFF2D323D),
              fontSize: 38,
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w300,
            ),
          ),
          TextSpan(
            text: ' ',
            style: TextStyle(
              color: Color(0xFF1B1E28),
              fontSize: 38,
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text: 'Beautiful ',
            style: TextStyle(
              color: Color(0xFF1B1E28),
              fontSize: 38,
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: 'world!',
            style: TextStyle(
              color: Color(0xFFFF7029),
              fontSize: 38,
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}
