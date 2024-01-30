import 'package:flutter/material.dart';

class ViewImagePage extends StatelessWidget {
  const ViewImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/2.png'), fit: BoxFit.cover)),
        ),
        Positioned(
            top: 120,
            right: 20,
            child: Image.asset(
              'assets/detail2.png',
              width: 200,
            )),
        Positioned(
            top: 380,
            left: 20,
            child: Image.asset(
              'assets/detail1.png',
              width: 200,
            )),
        Positioned(
            left: 20,
            top: 48,
            child: Opacity(
              opacity: 0.20,
              child: InkWell(
                onTap: () => Navigator.pop(context),
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
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            )),
        const Positioned(
            top: 50,
            right: 0,
            left: 0,
            child: Text(
              'View',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            )),
        Positioned(
            bottom: 50,
            right: 0,
            left: 0,
            child: Opacity(
              opacity: 0.90,
              child: Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.sizeOf(context).width,
                height: 212,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: ShapeDecoration(
                    color: const Color(0xFF3D3D3D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Niladri Reservoir',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              height: 0.07,
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
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'SF UI Display',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Row(children: [
                        const Icon(Icons.location_on_outlined,
                            color: Colors.white),
                        const SizedBox(width: 0),
                        const Padding(
                          padding: EdgeInsets.only(left: 4, right: 8),
                          child: Text(
                            'Tekergat, Sunamgnj',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'SF UI Display',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Image.asset(
                          "assets/pepole.png",
                          width: 64,
                        )
                      ]),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 6, top: 12),
                      child: Row(
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(width: 4),
                          Text(
                            '45 Minutes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'SF UI Display',
                              fontWeight: FontWeight.w400,
                              height: 0.09,
                              letterSpacing: 0.30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 6, right: 6, top: 20),
                      width: MediaQuery.sizeOf(context).width,
                      height: 56,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              backgroundColor: const Color(0xFF24BAEC)),
                          onPressed: () {},
                          child: const Center(
                              child: Text(
                            'Book Now',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'SF UI Display',
                              fontWeight: FontWeight.w600,
                            ),
                          ))),
                    ),
                  ],
                ),
              ),
            ))
      ],
    ));
  }
}
