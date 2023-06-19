import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hotel_ui/pages/other_pages/booking_page/booking_page.dart';
import 'package:hotel_ui/pages/other_pages/search_page/search_page.dart';

import '../pages/other_pages/home_page/home_page.dart';
import '../pages/other_pages/profile_page/profile_page.dart';
import 'package:iconly/iconly.dart';

class BottomNavBar extends StatefulWidget {
  static const String id = "bottom_nav_bar";

  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdcf0f9),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: const [
              HomePage(),
              SearchPage(),
              BookingPage(),
              ProfilePage(),
            ],
            onPageChanged: (int index) {
              setState(
                () {
                  currentIndex = index;
                },
              );
            },
          ),
        ],
      ),
      // floatingActionButton: navBar(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: navBar(),
    );
  }

  /// bottom navigation bar widget
  Widget navBar() {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: 10,
          sigmaX: 10,
        ),
        child: Container(
          height: size.height * 0.1,
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    pageController.jumpToPage(0);
                    currentIndex = 0;
                  });
                },
                icon: Icon(
                  currentIndex == 0 ? IconlyBold.home : IconlyLight.home,
                  color: currentIndex == 0 ? Colors.green : Colors.grey,
                  size: currentIndex == 0 ? 30 : 25,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    pageController.jumpToPage(1);
                    currentIndex = 1;
                  });
                },
                icon: Icon(
                  currentIndex == 1 ? IconlyBold.search : IconlyLight.search,
                  color: currentIndex == 1 ? Colors.green : Colors.grey,
                  size: currentIndex == 1 ? 30 : 25,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    pageController.jumpToPage(2);
                    currentIndex = 2;
                  });
                },
                icon: Icon(
                  currentIndex == 2
                      ? IconlyBold.bookmark
                      : IconlyLight.bookmark,
                  color: currentIndex == 2 ? Colors.green : Colors.grey,
                  size: currentIndex == 2 ? 30 : 25,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    pageController.jumpToPage(3);
                    currentIndex = 3;
                  });
                },
                icon: Icon(
                  currentIndex == 3 ? IconlyBold.profile : IconlyLight.profile,
                  color: currentIndex == 3 ? Colors.green : Colors.grey,
                  size: currentIndex == 3 ? 30 : 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
