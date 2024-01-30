import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:travalling_ui/pages/view_image/view_image.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
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
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ViewImagePage()));
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 380,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/2.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
                const Positioned(
                    right: 0,
                    left: 0,
                    top: 60,
                    child: Text(
                      'Details',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'SF UI Display',
                        fontWeight: FontWeight.w600,
                        height: 0.07,
                      ),
                    )),
                Positioned(
                    left: 20,
                    top: 42,
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
                Positioned(
                    right: 20,
                    top: 42,
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
                    )),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 30,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100))),
                    child: Center(
                      child: Opacity(
                        opacity: 0.20,
                        child: Container(
                          width: 36,
                          height: 5,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF7C838D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 25, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Niladri Reservoir',
                          style: TextStyle(
                            color: Color(0xFF1B1E28),
                            fontSize: 24,
                            fontFamily: 'SF UI Display',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.50,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            "assets/me.jpg",
                            width: 50,
                            height: 50,
                          ),
                        )
                      ],
                    )),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
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
                const SizedBox(height: 14),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,
                              color: Color(0xFF7C838D)),
                          Text(
                            'Tekergat',
                            style: TextStyle(
                              color: Color(0xFF7C838D),
                              fontSize: 15,
                              fontFamily: 'SF UI Display',
                              fontWeight: FontWeight.w400,
                              height: 0.09,
                              letterSpacing: 0.30,
                            ),
                          )
                        ],
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
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\$59/',
                              style: TextStyle(
                                color: Color(0xFF24BAEC),
                                fontSize: 15,
                                fontFamily: 'SF UI Display',
                                fontWeight: FontWeight.w400,
                                height: 0.09,
                                letterSpacing: 0.30,
                              ),
                            ),
                            TextSpan(
                              text: 'Person',
                              style: TextStyle(
                                color: Color(0xFF7C838D),
                                fontSize: 15,
                                fontFamily: 'SF UI Display',
                                fontWeight: FontWeight.w400,
                                height: 0.09,
                                letterSpacing: 0.30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 24, bottom: 24),
                  width: MediaQuery.sizeOf(context).width,
                  height: 42,
                  child: ListView.builder(
                      padding: const EdgeInsets.only(left: 20),
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                            margin: const EdgeInsets.only(right: 30),
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(index == 0
                                        ? "assets/1.png"
                                        : index == 4
                                            ? "assets/55.png"
                                            : "assets/2.png"))));
                      }),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'About Destination',
                    style: TextStyle(
                      color: Color(0xFF1B1E28),
                      fontSize: 20,
                      fontFamily: 'SF UI Display',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ReadMoreText(
                    'You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC... ',
                    trimLines: 2,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ]),
        ));
  }
}
