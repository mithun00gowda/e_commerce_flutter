import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../constants/app_constant.dart';
import '../subtitle_text.dart';
import 'dart:developer';



class LatestArrivalProductWidget extends StatelessWidget {
  const LatestArrivalProductWidget({super.key});


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        log('Navigator to the next page');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: size.width * 0.5,
          child: Row(
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: FancyShimmerImage(
                    imageUrl: AppConstants.imageUrl,
                    width: size.width * 0.24,
                    height: size.width * 0.32,
                  ),
                ),
              ),
              SizedBox(width: 5,),
              Flexible(
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text("Title " * 5,maxLines: 2,overflow:TextOverflow.ellipsis,),
                    FittedBox(
                      child: Row(
                            children: [
                            IconButton(onPressed: (){}, icon: Icon(IconlyLight.heart)),
                            IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart_outlined)),
                            ],
                            ),
                    ),

          FittedBox(child: SubtitleText(label: '350.00 \INR',color: Colors.blue,fontweight: FontWeight.w600)),

                  ],

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
