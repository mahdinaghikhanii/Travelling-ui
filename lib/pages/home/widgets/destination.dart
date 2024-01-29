import 'package:flutter/material.dart';

class DestinantionWidgets extends StatelessWidget {
  const DestinantionWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Best Destination',
            style: TextStyle(
              color: Color(0xFF1B1E28),
              fontSize: 20,
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'View all',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xFFFF7029),
              fontSize: 14,
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w400,
            ),
          )
        ]),
      ),
      SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: 380,
        child: ListView.builder(
            padding: const EdgeInsets.only(left: 20, top: 20),
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 286,
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 44),
                          width: 250,
                          height: 286,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(index == 0
                                      ? "assets/1.png"
                                      : "assets/2.png"))),
                        ),
                        Positioned(
                            right: 55,
                            top: 15,
                            child: Opacity(
                              opacity: 0.20,
                              child: Container(
                                width: 34,
                                height: 34,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF1B1E28),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.bookmark_outline,
                                  color: Colors.white,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 14, bottom: 10),
                    width: 245,
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Niladri Reservoir',
                            style: TextStyle(
                              color: Color(0xFF1B1E28),
                              fontSize: 18,
                              fontFamily: 'SF UI Display',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.50,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              SizedBox(width: 4),
                              Text(
                                '4.7',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF1B1E28),
                                  fontSize: 15,
                                  fontFamily: 'SF UI Display',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.30,
                                ),
                              ),
                            ],
                          )
                        ]),
                  ),
                  Row(children: [
                    const Icon(Icons.location_on_outlined,
                        color: Color(0xFF7C838D)),
                    const SizedBox(width: 4),
                    const Padding(
                      padding: EdgeInsets.only(left: 4, right: 8),
                      child: Text(
                        'Tekergat, Sunamgnj',
                        style: TextStyle(
                          color: Color(0xFF7C838D),
                          fontSize: 15,
                          fontFamily: 'SF UI Display',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/pepole.png",
                      width: 64,
                    )
                  ])
                ],
              );
            }),
      ),
    ]);
  }
}
