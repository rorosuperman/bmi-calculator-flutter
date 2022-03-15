import 'package:flutter/material.dart';
import 'constants.dart';
class Gender extends StatelessWidget {
  Gender({this.icons, this.label,});

  final IconData icons;
  final String label;
 // final TextStyle DefaultStyle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icons,
          color: Color(0xFF54BAB9),
          size: 45,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: DefaultStyle ,
        ),
      ],
    );
  }
}
