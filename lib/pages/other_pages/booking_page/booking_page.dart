import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class BookingPage extends StatefulWidget {
  static const String id = "booking_page";

  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IconlyLight.paper,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IconlyLight.category,
              color: Colors.black,
            ),
          ),
        ],
        elevation: 0,
        title: const Text(
          "My Bookmarks",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: GridView.count(
            childAspectRatio: 219 / 340,
            crossAxisSpacing: 10,
            mainAxisSpacing: 16,
            crossAxisCount: 2,
            children: [
              _bookingHotel("assets/images/other_images/hotel4.jpeg",
                  "Rodisson Blue Hotel", "\$205"),

              _bookingHotel("assets/images/other_images/hotel4.jpeg",
                  "Rodisson Blue Hotel", "\$205"),

              _bookingHotel("assets/images/other_images/hotel4.jpeg",
                  "Rodisson Blue Hotel", "\$205"),

              _bookingHotel("assets/images/other_images/hotel4.jpeg",
                  "Rodisson Blue Hotel", "\$205"),

              _bookingHotel("assets/images/other_images/hotel4.jpeg",
                  "Rodisson Blue Hotel", "\$205"),

              _bookingHotel("assets/images/other_images/hotel4.jpeg",
                  "Rodisson Blue Hotel", "\$205"),

              _bookingHotel("assets/images/other_images/hotel4.jpeg",
                  "Rodisson Blue Hotel", "\$205"),

              _bookingHotel("assets/images/other_images/hotel4.jpeg",
                  "Rodisson Blue Hotel", "\$205"),

              _bookingHotel("assets/images/other_images/hotel4.jpeg",
                  "Rodisson Blue Hotel", "\$205"),

              _bookingHotel("assets/images/other_images/hotel4.jpeg",
                  "Rodisson Blue Hotel", "\$205"),

              _bookingHotel("assets/images/other_images/hotel4.jpeg",
                  "Rodisson Blue Hotel", "\$205"),
              _bookingHotel("assets/images/other_images/hotel4.jpeg",
                  "Rodisson Blue Hotel", "\$205"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bookingHotel(image, name, price) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: _height*0.3,
      width: _width*0.1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            height: 150,
            width: 180,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover
                )
              ),
           
            ),
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(
                IconlyBold.star,
                color: Colors.yellow,
              ),
              Text(
                "5.0",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              Text(
                "Logos/Nigeria",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                price,
                style: const TextStyle(
                    color: Colors.green, fontWeight: FontWeight.w700, fontSize: 18),
              ),
              const SizedBox(width: 10,),
              const Icon(IconlyBold.bookmark,color: Colors.green,)
            ],
          )
        ],
      ),
    );
  }
}
