import 'package:flutter/material.dart';
import 'package:hotel_ui/navbar/bottom_navbar.dart';
import 'package:iconly/iconly.dart';

import '../home_page/home_page.dart';

class SeeAllPage extends StatefulWidget {
  static const String id = "see_all";

  const SeeAllPage({Key? key}) : super(key: key);

  @override
  State<SeeAllPage> createState() => _SeeAllPageState();
}

class _SeeAllPageState extends State<SeeAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, BottomNavBar.id);
          },
          icon: const Icon(
            IconlyLight.arrow_left,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.green.shade50,
        elevation: 0,
        title: const Text(
          "Booked hotels",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: 400,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Image(
                        fit: BoxFit.cover,
                        height: 85,
                        width: 100,
                        image: AssetImage(
                            "assets/images/other_images/hotel1.jpeg"),
                      ),
                    ),
                    const Text("Roddison Hotel",style: TextStyle(  fontSize: 17,
                      fontWeight: FontWeight.w700,),),


                  ],

                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
  
}
