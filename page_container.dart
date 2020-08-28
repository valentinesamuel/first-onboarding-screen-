import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  final Text mainText;

  PageContainer({this.mainText});
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: mainText));
  }
}
