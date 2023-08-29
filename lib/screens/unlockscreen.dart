import 'package:flutter/material.dart';
import 'package:ios_clone/components/customCont.dart';
import 'package:ios_clone/screens/homescreen1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class UnlockScreen extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[300],
        body: Column(children: [
          Expanded(
            flex: 10,
            child: PageView(controller: _controller, children: const [
              HomeScreen1(),
              HomeScreen2(),
            ]),
          ),
          Expanded(
              child: SmoothPageIndicator(
            controller: _controller,
            count: 2,
            effect: ExpandingDotsEffect(
              expansionFactor: 3,
              activeDotColor: Colors.grey[50]!,
              dotColor: Colors.brown[700]!,
            ),
          )),
          Expanded(
            flex: 2,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomSmallCont(icon: Icons.phone_rounded),
                  CustomSmallCont(icon: Icons.message_rounded),
                  CustomSmallCont(icon: Icons.mail_rounded),
                  CustomSmallCont(icon: Icons.home_rounded),
                ]),
          )
        ]));
  }
}
