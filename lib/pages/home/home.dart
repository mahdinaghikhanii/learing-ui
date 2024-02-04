import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leadingWidth: 160,
          title: const Row(
            children: [
              Spacer(),
              Icon(
                Icons.favorite,
                color: Color(0xFFE4F757),
                size: 35,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.notifications,
                color: Color(0xFFE4F757),
                size: 35,
              )
            ],
          ),
          leading: Container(
              margin: const EdgeInsets.only(left: 15),
              child: SvgPicture.asset(
                "assets/logo.svg",
                width: 100,
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              )),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            searchInput(context),
            const SliderTranding(),
            tabBar(),
            inProgress(context)
          ]),
        ));
  }

  Widget tabBar() {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      padding: const EdgeInsets.only(right: 0, left: 5),
      labelPadding: const EdgeInsets.only(right: 3),
      onTap: (index) {
        setState(() {
          selectIndex = index;
        });
      },
      labelColor: Colors.white,
      dividerColor: Colors.black,
      indicatorColor: const Color(0xFFE4F757),
      indicatorPadding: const EdgeInsets.only(left: 0),
      controller: tabController,
      tabs: const [
        Tab(
          iconMargin: EdgeInsets.zero,
          child: Text(
            "In Progress(3)",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          width: 90,
          height: 50,
          child: Tab(
            iconMargin: EdgeInsets.zero,
            child: Text(
              "Paused",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Tab(
          iconMargin: EdgeInsets.zero,
          child: Text(
            "Completed",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}

Widget searchInput(context) {
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      width: MediaQuery.sizeOf(context).width,
      height: 50,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey.shade900, borderRadius: BorderRadius.circular(14)),
      child: const Row(children: [
        Icon(
          Icons.search,
          color: Colors.grey,
          size: 30,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "Search for a course...",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
        )
      ]));
}

Widget inProgress(context) {
  return SizedBox(
    width: MediaQuery.sizeOf(context).width,
    height: MediaQuery.sizeOf(context).height,
    child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (cotnext, index) {
          return Container(
              margin: const EdgeInsets.only(right: 10, left: 10, top: 25),
              height: 190,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(24)),
              width: MediaQuery.sizeOf(context).width,
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Fundamentals of UX\nDesign (Google)",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Offered by:",
                              style: TextStyle(color: Color(0xFFA8A8A8)),
                            ),
                            Text("Google",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 4),
                              padding: const EdgeInsets.only(
                                  top: 2, bottom: 2, left: 8, right: 8),
                              height: 24,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFDFFB6),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                "UX Desing",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 4),
                              padding: const EdgeInsets.only(
                                  top: 2, bottom: 2, left: 8, right: 8),
                              height: 24,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFBDB2FF),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                "Ui/UX",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 4),
                              padding: const EdgeInsets.only(
                                  top: 2, bottom: 2, left: 8, right: 8),
                              height: 24,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFFADAD),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                "Desi..",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 190,
                          height: 36,
                          decoration: BoxDecoration(
                              color: const Color(0xFFE4F757),
                              borderRadius: BorderRadius.circular(10)),
                          margin: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: const Center(
                            child: Text(
                              "View Details",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                      ]),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 12, top: 0),
                  child: Image.asset(
                    'assets/1.png',
                    // width: 132,
                    height: 156,
                    fit: BoxFit.cover,
                  ),
                )
              ]));
        }),
  );
}
