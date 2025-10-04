import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  TitleText(
      {super.key,
      required this.label,
      this.fontsize = 20,
      this.color,
      this.maxlines});
  final String label;
  final double fontsize;
  final Color? color;
  final int? maxlines;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      maxLines: maxlines,
      style: TextStyle(
          fontSize: fontsize,
          color: color,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis),
    );
  }
}
