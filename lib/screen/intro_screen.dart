import 'package:flutter/material.dart';
import 'package:flutterproject/screen/login_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  List<PageViewModel> listPagesViewModel() {
    return [
      PageViewModel(
        title: "Tentukan Lokasimu",
        body:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Libero congue porttitor ut sed fermentum augue sit pellentesque. Libero orci volutpat consequat",
        image: Image.asset(
          "assets/images/intro-1.png",
          width: 300,
        ),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
              color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold),
          bodyTextStyle: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
      PageViewModel(
        title: "Mencari Rute Terbaik",
        body:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Libero congue porttitor ut sed fermentum augue sit pellentesque. Libero orci volutpat consequat",
        image: Image.asset(
          "assets/images/intro-2.png",
          height: 200,
        ),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
              color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold),
          bodyTextStyle: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
      PageViewModel(
        title: "Nikmati Perjalananmu",
        body:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Libero congue porttitor ut sed fermentum augue sit pellentesque. Libero orci volutpat consequat",
        image: Image.asset(
          "assets/images/intro-3.png",
          width: 300,
        ),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
              color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold),
          bodyTextStyle: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      pages: listPagesViewModel(),
      onDone: () {
        // When done button is press
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
      onSkip: () {
        // You can also override onSkip callback
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
      showSkipButton: true,
      skip: Text("Skip"),
      showNextButton: false,
      doneColor: Colors.blue,
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
    ));
  }
}
