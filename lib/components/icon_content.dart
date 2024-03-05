import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  IconContent({
    @required this.icon,
    @required this.text,
    this.color = kDefaultColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          this.icon,
          size: kIconSize,
          color: this.color,
        ),
        SizedBox(
          height: kSpace,
        ),
        Text(
          this.text,
          style: kLabelStyle.copyWith(
            color: this.color,
          ),
        ),
      ],
    );
  }
}
