import 'package:e_commerce/widgets/subtitle_text.dart';
import 'package:e_commerce/widgets/title_text.dart';
import 'package:flutter/material.dart';

import '../services/assets_manager.dart';

class EmptyBagWidget extends StatelessWidget {
  const EmptyBagWidget({super.key, required this.assetsImage, required this.titletext, required this.subtitletext1, required this.subtitletext2, required this.buttontext, required this.function});

  final String assetsImage;
  final String titletext;
  final String subtitletext1;
  final String subtitletext2;
  final String buttontext;
  final Function function;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
          Image.asset(assetsImage,width: double.infinity,height: size.height * 0.3,),
          SizedBox(height: 10,),
          TitleText(label: titletext,fontsize: 40,color: Colors.red,),
          SizedBox(height: 10,),
          SubtitleText(label: subtitletext1,fontweight: FontWeight.w600,),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SubtitleText(label: subtitletext2,fontweight: FontWeight.w400,textAlign: TextAlign.center,),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: (){
                function();
              }, child: Text(buttontext,style: TextStyle(color: Colors.white),))

        ],
      ),
    );
  }
}
