import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: SvgPicture.asset("assets/logo.svg"),
        ),
        backgroundColor: Colors.black,
        body: Column(children: [frame(), boxForDetailAndGetStart(context)]));
  }
}

Widget frame() {
  return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 30),
      child: Image.asset("assets/frame.png", fit: BoxFit.cover));
}

Widget boxForDetailAndGetStart(context) {
  return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 270,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            'Knowledge On the Go:\nYour Personal\nLearing Companion',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Text(
              "Transform idle moments into learning opportunities. Explore a vast array of courses right at your fingertips.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFF838383))),
        ),
        Container(
          margin: EdgeInsets.only(top: 6, bottom: 10),
          width: 200,
          height: 45,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () {},
              child: Center(
                  child: Text("Get Started",
                      style: TextStyle(
                          color: Color(0xFFE4F757),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)))),
        )
      ]));
}
