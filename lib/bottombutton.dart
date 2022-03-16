import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'results.dart';

class bottomButton extends StatelessWidget {
  bottomButton ({this.ontap,this.lable});
  final Function ontap;
  final String lable ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(10.0),
        color: Color(0xFF54BAB9),
        // ),
        // child: Padding(
        //     padding: EdgeInsets.all(12),
        child: Text(
         lable,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Poppins', color: Colors.white, fontSize: 18),
        ),
        margin: EdgeInsets.only(top: 12.0),
        width: double.infinity,
        height: 50.0,
      ),
    );
  }
}
