import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learing/model/home_model.dart';

class SliderTranding extends StatelessWidget {
  const SliderTranding({super.key});

  @override
  Widget build(BuildContext context) {
    final CarouselController controller = CarouselController();
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 30),
      child: CarouselSlider.builder(
          carouselController: controller,
          itemCount: homeData.length,
          options: CarouselOptions(
              initialPage: 0,
              autoPlay: true,
              aspectRatio: 2.3,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {}),
          itemBuilder: (context, index, realIdx) {
            return Container(
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  color: homeData[index].color,
                  borderRadius: BorderRadius.circular(24)),
              child: Stack(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 25),
                          child: Text(
                            homeData[index].title,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 17),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 20, bottom: 0, left: 10),
                          width: 180,
                          height: 30,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  foregroundColor: Colors.white),
                              onPressed: () {},
                              child: const Center(
                                  child: Text("Get Started",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)))),
                        ),
                      ]),
                  Positioned(
                      right: 10,
                      bottom: 5,
                      child: SvgPicture.asset(
                        "assets/star.svg",
                        colorFilter: ColorFilter.mode(
                            homeData[index].secoundColor, BlendMode.srcIn),
                      ))
                ],
              ),
            );
          }),
    );
  }
}
