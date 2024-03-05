import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class NavigationButton extends StatelessWidget {
  NavigationButton({this.title, this.onTap});

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        height: kBottomContainerHeight,
        width: double.infinity,
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            this.title,
            style: kNumberStyle.copyWith(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
