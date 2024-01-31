import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: false,
            leadingWidth: 0,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF6F6F8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Icon(
                      Icons.notifications_outlined,
                      color: Colors.black,
                    ),
                  ),
                  const Text("Profile",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 18)),
                  Container(
                    width: 44,
                    height: 44,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF6F6F8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Icon(Icons.edit, color: Color(0xFF24BAEC)),
                  ),
                ])),
        body: Column(children: [
          userInformation(),
          userPoints(),
          const SizedBox(height: 58),
          customListTile(Icons.person_outline, "Profile", context),
          customListTile(Icons.bookmark_outline, "Bookmarked", context),
          customListTile(Icons.trip_origin_sharp, "Previous Trips", context),
          customListTile(Icons.settings_outlined, "Settings", context),
          customListTile(Icons.app_blocking_outlined, "Version", context)
        ]));
  }
}

Widget userInformation() {
  return Column(children: [
    Center(
      child: Container(
        margin: const EdgeInsets.only(top: 30, bottom: 20),
        width: 96,
        height: 96,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            image: const DecorationImage(image: AssetImage("assets/me.jpg"))),
      ),
    ),
    const Text("Mahdi naghikhani",
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23)),
    const SizedBox(height: 2),
    const Text(
      "Mahdi@gmail.com",
      style: TextStyle(color: Colors.grey),
    ),
    const SizedBox(height: 40),
  ]);
}

Widget userPoints() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Column(children: [
            Text(
              "Reward Points",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            SizedBox(height: 8),
            Text(
              "320",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.orange),
            ),
          ]),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            width: 1,
            color: Colors.grey.shade300,
            height: 40,
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(children: [
            Text(
              "Travel Trips",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            SizedBox(height: 8),
            Text(
              "180",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.orange),
            ),
          ]),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            width: 1,
            color: Colors.grey.shade300,
            height: 40,
          )
        ],
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            Text(
              "Blucket List",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            SizedBox(height: 8),
            Text(
              "451",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.orange),
            ),
          ]),
        ],
      )
    ],
  );
}

Widget customListTile(IconData iconData, String title, context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 0),
    child: Column(children: [
      Row(children: [
        Icon(iconData, color: Colors.grey.shade500),
        const SizedBox(width: 13),
        Text(
          title,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward,
          color: Colors.grey.shade500,
        )
      ]),
      Container(
        margin: const EdgeInsets.only(bottom: 20, top: 15),
        color: Colors.grey.shade300,
        height: 1,
        width: MediaQuery.sizeOf(context).width,
      )
    ]),
  );
}
