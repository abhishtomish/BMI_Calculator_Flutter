import 'package:flutter/material.dart';

const boarderRadius = 10.0;
const margins = 15.0;

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(margins),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(boarderRadius),
        ),
      ),
    );
  }
}
