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
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.green.shade50,
        appBar: AppBar(
          backgroundColor: Colors.green.shade50,
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      "Hello ,Kezia",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: _height * 0.063,
                  width: _width * 0.978,
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
                SizedBox(
                  height: _height * 0.02,
                ),
                TabBar(
                    physics: const BouncingScrollPhysics(),
                    isScrollable: true,
                    splashBorderRadius: BorderRadius.circular(10),
                    indicator: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    // enableFeedback: true,
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

                  height: _height*0.53,
                  child: TabBarView(
                    children: [
                      SizedBox(
                        height: _height * 0.5,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            hotel(
                                "assets/images/other_images/hotel1.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                            hotel(
                                "assets/images/other_images/hotel1.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                            hotel(
                                "assets/images/other_images/hotel1.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                            hotel(
                                "assets/images/other_images/hotel1.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                            hotel(
                                "assets/images/other_images/hotel1.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: _height * 0.5,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            hotel(
                                "assets/images/other_images/hotel2.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                            hotel(
                                "assets/images/other_images/hotel2.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                            hotel(
                                "assets/images/other_images/hotel2.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                            hotel(
                                "assets/images/other_images/hotel2.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                            hotel(
                                "assets/images/other_images/hotel2.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: _height * 0.5,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            hotel(
                                "assets/images/other_images/hotel3.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                            hotel(
                                "assets/images/other_images/hotel3.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                            hotel(
                                "assets/images/other_images/hotel3.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                            hotel(
                                "assets/images/other_images/hotel3.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                            hotel(
                                "assets/images/other_images/hotel3.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: _height * 0.5,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            hotel(
                                "assets/images/other_images/hotel4.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                            hotel(
                                "assets/images/other_images/hotel4.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                            hotel(
                                "assets/images/other_images/hotel4.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                            hotel(
                                "assets/images/other_images/hotel4.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                            hotel(
                                "assets/images/other_images/hotel4.jpeg",
                                "Intercontinental Hotel",
                                "logos,Nigeria",
                                "\$205/night"),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: _width * 0.043,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Recently Booked",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, SeeAllPage.id);
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
      ),
    );
  }

  Widget hotel(image, name, location, price) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Stack(children: [
      Container(
        width: _width * 0.74,
        height: _height * 0.6,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
      Container(
        padding: const EdgeInsets.all(13),
        margin: EdgeInsets.only(bottom: _height * 0.01),
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
        margin: EdgeInsets.only(left: _width * 0.5, top: _height * 0.05),
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
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Stack(children: [
      Container(
        width: _width * 0.2,
        height: _height * 0.6,
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
        margin: EdgeInsets.only(left: _width * 0.3, bottom: 30),
        alignment: Alignment.bottomCenter,
        child: const Icon(
          IconlyBold.bookmark,
          size: 30,
          color: Colors.white,
        ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 10),
        margin: EdgeInsets.only(left: _width * 0.2, top: _height * 0.05),
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
