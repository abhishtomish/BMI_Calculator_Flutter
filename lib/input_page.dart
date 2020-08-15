import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = 0xFFEB1555;
const activeCardColor = 0xFF1D1E33;
const boarderRadius = 10.0;
const margins = 15.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Color(activeCardColor),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(activeCardColor),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Color(activeCardColor),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Color(activeCardColor),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(activeCardColor),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(bottomContainerColor),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margins),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(boarderRadius),
      ),
    );
  }
}
