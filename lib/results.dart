import 'package:flutter/material.dart';
import 'constants.dart';

class Resultpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF8F1),
      appBar: AppBar(
        backgroundColor: Color(0xFFFBF8F1),
        shadowColor: Colors.grey,
        // toolbarHeight: 70,
        toolbarOpacity: 1.0,
        elevation: 0,
        //   backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Body Mass Index', style: appbarstyle),
      ),
    );
  }
}
