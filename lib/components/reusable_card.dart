import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final EdgeInsetsGeometry margin;
  final double borderRadius;
  final Widget child;
  final Function onTap;

  ReusableCard({
    @required this.color,
    this.child,
    this.margin = const EdgeInsets.all(8.0),
    this.borderRadius = 10.0,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: this.child,
        margin: this.margin,
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(this.borderRadius),
        ),
      ),
    );
  }
}
