import 'package:flutter/material.dart';

class CardShadow extends StatelessWidget {
  const CardShadow({
    Key? key,
    required this.height,
    required this.width,
    required this.child,
    this.padding,
  }) : super(key: key);

  final double height;
  final double width;
  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.all(16),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              color: Color(0x14000000),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 2))
        ],
      ),
      child: child,
    );
  }
}
