import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int positionIndex;
  final int currentIndex;

  Indicator({this.positionIndex, this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      height: 12,
      width: positionIndex == currentIndex ? 30.0 : 12.0,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          color:
              positionIndex == currentIndex ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(100)),
    );
  }
}
