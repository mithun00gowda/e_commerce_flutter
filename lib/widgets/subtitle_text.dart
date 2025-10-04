import 'package:flutter/material.dart';

class SubtitleText extends StatelessWidget {
  SubtitleText({super.key, this.label = "Hello", this.fontsize = 14 , this.fontweight = FontWeight.normal, this.color,  this.decoration = TextDecoration.none});
  final String label;
  final double fontsize;
  final FontWeight fontweight;
  final Color? color;
  final TextDecoration decoration;
  @override
  Widget build(BuildContext context) {
    return Text(label,style: TextStyle(fontSize: fontsize,color: color,fontWeight: fontweight,decoration: decoration),);
  }
}
