import 'package:flutter/material.dart';
import 'package:hotel_ui/pages/other_pages/see_all_page/see_all_page.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.green.shade50,
        appBar: AppBar(
          backgroundColor: Colors.white30,
          elevation: 0,
          title: const Text(
            "Bolu",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                IconlyBold.bookmark,
                size: 30,
              ),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                IconlyBold.notification,
                color: Colors.black,
                size: 30,
              ),
            )
          ],
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Hello ,Kezia",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 32),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 54,
                    width: 389,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 16),
                        suffixIcon: Icon(
                          IconlyBold.filter,
                          color: Colors.green,
                        ),
                        border: InputBorder.none,
                        hintText: "Search",
                        prefixIcon: Icon(IconlyBold.search),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TabBar(
                      physics: const BouncingScrollPhysics(),
                      isScrollable: true,
                      splashBorderRadius: BorderRadius.circular(10),
                      indicator: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green),
                      enableFeedback: true,
                      indicatorColor: Colors.green,
                      unselectedLabelColor: Colors.green,
                      labelStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                      tabs: const [
                        Tab(
                          text: "All hotels",
                        ),
                        Tab(
                          text: "Recommended",
                        ),
                        Tab(
                          text: "Trending",
                        ),
                        Tab(
                          text: "Popular",
                        )
                      ]),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 450,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        hotel(
                            "assets/images/other_images/hotel1.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                        hotel(
                            "assets/images/other_images/hotel1.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                        hotel(
                            "assets/images/other_images/hotel1.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                        hotel(
                            "assets/images/other_images/hotel1.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                        hotel(
                            "assets/images/other_images/hotel1.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Recently Booked",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w600),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, SeeAllPage.id);
                        },
                        child: const Text(
                          "See all",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              color: Colors.green),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Hello ,Kezia",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 32),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 54,
                    width: 389,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 16),
                        suffixIcon: Icon(
                          IconlyBold.filter,
                          color: Colors.green,
                        ),
                        border: InputBorder.none,
                        hintText: "Search",
                        prefixIcon: Icon(IconlyBold.search),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TabBar(
                      physics: const BouncingScrollPhysics(),
                      isScrollable: true,
                      splashBorderRadius: BorderRadius.circular(10),
                      indicator: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green),
                      enableFeedback: true,
                      indicatorColor: Colors.green,
                      unselectedLabelColor: Colors.green,
                      labelStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                      tabs: const [
                        Tab(
                          text: "All hotels",
                        ),
                        Tab(
                          text: "Recommended",
                        ),
                        Tab(
                          text: "Trending",
                        ),
                        Tab(
                          text: "Popular",
                        )
                      ]),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 450,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        hotel(
                            "assets/images/other_images/hotel2.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                        hotel(
                            "assets/images/other_images/hotel2.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                        hotel(
                            "assets/images/other_images/hotel2.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                        hotel(
                            "assets/images/other_images/hotel2.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                        hotel(
                            "assets/images/other_images/hotel2.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Recently Booked",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w600),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, SeeAllPage.id);
                        },
                        child: const Text(
                          "See all",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              color: Colors.green),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Hello ,Kezia",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 32),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 54,
                    width: 389,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 16),
                        suffixIcon: Icon(
                          IconlyBold.filter,
                          color: Colors.green,
                        ),
                        border: InputBorder.none,
                        hintText: "Search",
                        prefixIcon: Icon(IconlyBold.search),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TabBar(
                      physics: const BouncingScrollPhysics(),
                      isScrollable: true,
                      splashBorderRadius: BorderRadius.circular(10),
                      indicator: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green),
                      enableFeedback: true,
                      indicatorColor: Colors.green,
                      unselectedLabelColor: Colors.green,
                      labelStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                      tabs: const [
                        Tab(
                          text: "All hotels",
                        ),
                        Tab(
                          text: "Recommended",
                        ),
                        Tab(
                          text: "Trending",
                        ),
                        Tab(
                          text: "Popular",
                        )
                      ]),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 450,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        hotel(
                            "assets/images/other_images/hotel3.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                        hotel(
                            "assets/images/other_images/hotel3.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                        hotel(
                            "assets/images/other_images/hotel3.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                        hotel(
                            "assets/images/other_images/hotel3.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                        hotel(
                            "assets/images/other_images/hotel3.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Recently Booked",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w600),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, SeeAllPage.id);
                        },
                        child: const Text(
                          "See all",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              color: Colors.green),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Hello ,Kezia",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 32),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 54,
                    width: 389,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 16),
                        suffixIcon: Icon(
                          IconlyBold.filter,
                          color: Colors.green,
                        ),
                        border: InputBorder.none,
                        hintText: "Search",
                        prefixIcon: Icon(IconlyBold.search),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TabBar(
                      physics: const BouncingScrollPhysics(),
                      isScrollable: true,
                      splashBorderRadius: BorderRadius.circular(10),
                      indicator: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green),
                      enableFeedback: true,
                      indicatorColor: Colors.green,
                      unselectedLabelColor: Colors.green,
                      labelStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                      tabs: const [
                        Tab(
                          text: "All hotels",
                        ),
                        Tab(
                          text: "Recommended",
                        ),
                        Tab(
                          text: "Trending",
                        ),
                        Tab(
                          text: "Popular",
                        )
                      ]),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 450,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        hotel(
                            "assets/images/other_images/hotel4.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                        hotel(
                            "assets/images/other_images/hotel4.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                        hotel(
                            "assets/images/other_images/hotel4.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                        hotel(
                            "assets/images/other_images/hotel4.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                        hotel(
                            "assets/images/other_images/hotel4.jpeg",
                            "Intercontinental Hotel",
                            "logos,Nigeria",
                            "\$205/night"),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Recently Booked",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w600),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, SeeAllPage.id);
                        },
                        child: const Text(
                          "See all",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              color: Colors.green),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget hotel(image, name, location, price) {
    return Stack(children: [
      Container(
        width: 300,
        height: 500,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
      Container(
        padding: const EdgeInsets.all(13),
        margin: const EdgeInsets.only(bottom: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              location,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              price,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 7,
            ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 250, bottom: 30),
        alignment: Alignment.bottomCenter,
        child: const Icon(
          IconlyBold.bookmark,
          size: 30,
          color: Colors.white,
        ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 10),
        margin: const EdgeInsets.only(left: 200, top: 50),
        height: 34,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: const [
            Icon(
              Icons.star,
              color: Colors.white,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              "5.0",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    ]);
  }

  Widget _tabsview(image, name, location, price) {
    return Stack(children: [
      Container(
        width: 300,
        height: 500,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
      Container(
        padding: const EdgeInsets.all(13),
        margin: const EdgeInsets.only(bottom: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              location,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              price,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 7,
            ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 250, bottom: 30),
        alignment: Alignment.bottomCenter,
        child: const Icon(
          IconlyBold.bookmark,
          size: 30,
          color: Colors.white,
        ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 10),
        margin: const EdgeInsets.only(left: 200, top: 50),
        height: 34,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: const [
            Icon(
              Icons.star,
              color: Colors.white,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              "5.0",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    ]);
  }
}
