import 'package:flutter/material.dart';
import 'package:hotel_ui/navbar/bottom_navbar.dart';

class IntroPage extends StatefulWidget {
  static const String id = "intro_page";

  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            controller: _pageController,
            children: [
              Container(
                height: _height,
                width: _width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/intro_image/decoration.jpeg"),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: _width * 0.37),
                        child: const Text(
                          "Welcome to",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 43,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: _width * 0.46),
                        child: const Text(
                          "Bolu",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 85,
                              color: Colors.green),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(20),
                        child: const Text(
                          "The best hotel bookings in the century to accompany your vacation",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              pages(
                image: "assets/images/intro_image/plane.jpeg",
                title: "Travel safely, comfortably & easily ",
                content:
                    "Hotels can be found in all parts of the world, and they come in all shapes and sizes. Some hotels are small and intimate, while others are large and luxurious.",
              ),
              pages(
                image: "assets/images/intro_image/dubai.jpeg",
                title: "Find the best hotels for your vacation ",
                content:
                    "Hotels can be found in all parts of the world, and they come in all shapes and sizes. Some hotels are small and intimate, while others are large and luxurious.",
              ),
              pages(
                image: "assets/images/intro_image/jumping.jpeg",
                title: "Let's discover the world with us ",
                content:
                    "Hotels can be found in all parts of the world, and they come in all shapes and sizes. Some hotels are small and intimate, while others are large and luxurious.",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget pages({image, content, title, bool isActive = true}) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: _height,
      width: _width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(image),
            height: _height * 0.5,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: _height * 0.01,
          ),
          Container(
            margin: const EdgeInsets.all(27),
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              content,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: _height * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: buildIndicator(),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            height: _height * 0.06,
            width: _width * 0.9,
            child: TextButton(
                onPressed: () {
                  setState(() {
                    if (currentIndex == 0) {
                      _pageController.jumpToPage(1);
                    } else if (currentIndex == 1) {
                      _pageController.jumpToPage(2);
                    } else if (currentIndex == 2) {
                      _pageController.jumpToPage(3);
                    } else if (currentIndex == 3) {
                      Navigator.pushReplacementNamed(context, BottomNavBar.id);
                    }
                  });
                },
                child: currentIndex == 3
                    ? const Text("Home",
                        style: TextStyle(fontSize: 20, color: Colors.white))
                    : const Text("Next",
                        style: TextStyle(fontSize: 20, color: Colors.white))),
          ),
          SizedBox(
            height: _height * 0.01,
          ),
          Container(
            height: _height * 0.06,
            width: _width * 0.9,
            decoration: BoxDecoration(
              color:
                  currentIndex == 3 ? Colors.transparent : Colors.green.shade50,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, BottomNavBar.id);
                },
                child: currentIndex == 3
                    ? const Text(
                        "Skip",
                        style:
                            TextStyle(color: Colors.transparent, fontSize: 20),
                      )
                    : const Text(
                        "Skip",
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      )),
          )
        ],
      ),
    );
  }

  Widget _indicators(bool active) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: active ? 20 : 6,
      width: active ? 20 : 6,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green, width: 2),
        color: active ? Colors.transparent : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  List<Widget> buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 4; i++) {
      if (currentIndex == i) {
        indicators.add(_indicators(true));
      } else {
        indicators.add(_indicators(false));
      }
    }
    return indicators;
  }
}
