import 'package:flutter/material.dart';

const boarderRadius = 10.0;
const margins = 15.0;

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(margins),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(boarderRadius),
      ),
    );
  }
}
