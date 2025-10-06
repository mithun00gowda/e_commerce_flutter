import 'dart:math';

import 'package:e_commerce/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';

class QuantityBtmSheet extends StatelessWidget {
  const QuantityBtmSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          height: 6,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 25,
              itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                print('Index $index');
              },
              child: Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SubtitleText(label: '${index + 1}',),
              )),
            );
          }),
        ),
      ],
    );
  }
}
