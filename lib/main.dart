import 'package:flutter/material.dart';
import 'package:hotel_ui/navbar/bottom_navbar.dart';
import 'package:hotel_ui/pages/intro_page/intro_page1.dart';
import 'package:hotel_ui/pages/other_pages/booking_page/booking_page.dart';
import 'package:hotel_ui/pages/other_pages/home_page/home_page.dart';
import 'package:hotel_ui/pages/other_pages/profile_page/profile_page.dart';
import 'package:hotel_ui/pages/other_pages/search_page/search_page.dart';
import 'package:hotel_ui/pages/other_pages/see_all_page/see_all_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IntroPage(),
      routes: {
        IntroPage.id: (context) => const IntroPage(),
        BottomNavBar.id: (context) => const BottomNavBar(),
        HomePage.id: (context) => const HomePage(),
        BookingPage.id: (context) => const BookingPage(),
        SearchPage.id: (context) => const SearchPage(),
        ProfilePage.id: (context) => const ProfilePage(),
        SeeAllPage.id:(context)=>const SeeAllPage(),
      },
    );
  }
}
