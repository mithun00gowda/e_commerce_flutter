import 'package:e_commerce/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppNameText extends StatelessWidget {
  const AppNameText({super.key, this.fontsize = 14});
  final double fontsize;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 22),
        baseColor: Colors.purple,
        highlightColor: Colors.red,
        child: TitleText(label: "Shop smart",fontsize: fontsize,));
  }
}
