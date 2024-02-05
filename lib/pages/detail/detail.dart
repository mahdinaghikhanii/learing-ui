import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: MediaQuery.sizeOf(context).width,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE4F757),
                    foregroundColor: Colors.white),
                onPressed: () {},
                child: const Center(
                    child: Text("Enroll in this course",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)))),
          ),
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButton: Container(
        //   margin: const EdgeInsets.only(left: 20, right: 20),
        //   width: MediaQuery.sizeOf(context).width,
        //   height: 50,
        //   child: ElevatedButton(
        //       style: ElevatedButton.styleFrom(
        //           backgroundColor: const Color(0xFFE4F757),
        //           foregroundColor: Colors.white),
        //       onPressed: () {},
        //       child: const Center(
        //           child: Text("Enroll in this course",
        //               style: TextStyle(
        //                   color: Colors.black,
        //                   fontSize: 16,
        //                   fontWeight: FontWeight.bold)))),
        // ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            imageHeader(context),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Finding projects as a\nGraphic Designer",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 8, bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Offered by:",
                    style: TextStyle(color: Color(0xFFA8A8A8)),
                  ),
                  SizedBox(width: 2),
                  Text("Google",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.play_lesson,
                          size: 30,
                          color: Color(0xFFE4F757),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "9 Lessons",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.star,
                          size: 30,
                          color: Color(0xFFE4F757),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "4.7(3.6+)",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.timer,
                          size: 30,
                          color: Color(0xFFE4F757),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "2 Weeks",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ]),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Text(
                "About this course",
                style: TextStyle(color: Color(0xFFA8A8A8)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "Graphic design is all around us, in a myriad of forms, both on screen and in print, yet it is always made up of images and words to create a communication goal. This four-course sequence exposes students to the fundamental skills required to make sophisticated graphic",
                maxLines: 5,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis,
                    fontSize: 17),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "What you’ll learn",
                style: TextStyle(color: Color(0xFFA8A8A8)),
              ),
            ),
            textWithIcon(const Color(0xFFFFD6A5),
                "Gain the essential skills for making yourself job-ready"),
            textWithIcon(const Color(0xFFFFD6A5),
                "Gain the essential skills for making yourself job-ready"),
            textWithIcon(const Color(0xFFFFD6A5),
                "Gain the essential skills for making yourself job-ready"),
            const SizedBox(height: 10),
          ]),
        ));
  }
}

Widget imageHeader(context) {
  return Stack(
    children: [
      Container(
          height: 263,
          width: MediaQuery.sizeOf(context).width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/2.png"), fit: BoxFit.cover))),
      Positioned(
        bottom: 0,
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: 24,
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35))),
        ),
      )
    ],
  );
}

Widget textWithIcon(Color color, String text) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(40)),
          margin: const EdgeInsets.only(right: 16),
          width: 22,
          height: 22,
          child: const Center(
              child: Icon(
            Icons.arrow_forward,
            color: Colors.black,
            size: 16,
          )),
        ),
        Expanded(
            child: Text(text,
                style: const TextStyle(color: Colors.white, fontSize: 16)))
      ]));
}
