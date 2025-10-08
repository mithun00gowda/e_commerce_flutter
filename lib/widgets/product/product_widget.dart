import 'package:e_commerce/constants/app_constant.dart';
import 'package:e_commerce/widgets/subtitle_text.dart';
import 'package:e_commerce/widgets/title_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: GestureDetector(
        onTap: (){
          print("TODo add the navigator to the product details screen");
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: FancyShimmerImage(
                imageUrl: AppConstants.imageUrl,
                width: double.infinity,
                height: size.height * 0.22,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(flex:2,child: TitleText(label: 'Label' * 10,maxlines: 2,fontsize: 18,),),
                Flexible(child: IconButton(onPressed: (){}, icon: Icon(IconlyLight.heart)))
              ],
            ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(flex:1,child: SubtitleText(label: '350.00 \INR',color: Colors.blue,fontweight: FontWeight.w600)),
                Flexible(child: Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                    child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        splashColor: Colors.red,
                        onTap: (){},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.add_shopping_cart_outlined),
                        ))))
              ],
            )
          ],
        ),
      ),
    );
  }
}
