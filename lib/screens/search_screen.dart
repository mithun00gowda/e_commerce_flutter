import 'package:flutter/material.dart';

import '../services/assets_manager.dart';
import '../widgets/title_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(

          leading: Padding(
              padding:const EdgeInsets.all(8.0),

              child: Image.asset(AssetsManager.shoppingCart)),
          title: TitleText(label: "Search Product"),
        ),
        body: Column(
          children: [
            TextField()
          ],
        ),
      ),
    );
  }
}
