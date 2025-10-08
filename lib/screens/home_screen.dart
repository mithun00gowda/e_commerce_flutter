
import 'package:card_swiper/card_swiper.dart';
import 'package:e_commerce/constants/app_constant.dart';
import 'package:e_commerce/provider/theme_provider.dart';
import 'package:e_commerce/widgets/subtitle_text.dart';
import 'package:e_commerce/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/assets_manager.dart';
import '../widgets/app_name_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(

        leading: Padding(
            padding:const EdgeInsets.all(8.0),

            child: Image.asset(AssetsManager.shoppingCart)),
        title:const AppNameText(fontsize: 20,),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 10,),
            SizedBox(
              height: size.height * 0.22,
              child: Swiper(
                itemBuilder: (BuildContext context,int index){
                  return Image.asset(AppConstants.bannerImages[index],fit: BoxFit.fill,);
                },
                itemCount: AppConstants.bannerImages.length,
                pagination: SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                    activeColor: Colors.red,
                    color: Colors.white
                  )
                ),
                autoplay: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
