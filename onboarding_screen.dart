import 'package:flutter/material.dart';
import 'package:onboarding/indicator.dart';
import 'package:onboarding/page_container.dart';


class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController myPageController = PageController(initialPage: 0);
  int currentPage = 0;

  onChangedFunction(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            onPageChanged: onChangedFunction,
            controller: myPageController,
            children: <Widget>[
              PageContainer(mainText: Text("This is my first screen")),
              PageContainer(mainText: Text("This is my second screen")),
              PageContainer(mainText: Text("This is my third screen")),
              
            ],
          ),
          Positioned(
            bottom: 60,
            left: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Indicator(
                  positionIndex: 0,
                  currentIndex: currentPage,
                ),
                SizedBox(
                  width: 10,
                ),
                Indicator(
                  positionIndex: 1,
                  currentIndex: currentPage,
                ),
                SizedBox(
                  width: 10,
                ),
                Indicator(
                  positionIndex: 2,
                  currentIndex: currentPage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
