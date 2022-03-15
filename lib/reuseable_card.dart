import 'package:flutter/material.dart';
class ResuableCard extends StatelessWidget {
  ResuableCard({this.colour, this.cardChild,this.onpressed});
  final Color colour;
  final Widget cardChild;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed ,
      child: Container(
          child: cardChild,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10.0),
          )),
    );
  }
}
