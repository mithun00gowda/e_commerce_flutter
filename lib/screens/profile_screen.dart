import 'package:e_commerce/services/assets_manager.dart';
import 'package:e_commerce/widgets/subtitle_text.dart';
import 'package:e_commerce/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

import '../provider/theme_provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(

        leading: Padding(
            padding: EdgeInsets.all(8.0),

            child: Image.asset(AssetsManager.shoppingCart)),
        title: Text("Profile Screen"),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: false,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: TitleText(label: "Please login to have unlimited access"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).cardColor,
                      border: Border.all(
                        color: Theme.of(context).colorScheme.outline,
                        width: 3
                      ),
                      image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2023/02/18/11/00/icon-7797704_640.png"),fit: BoxFit.fill),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    TitleText(label: "Mithun M"),
                    const SizedBox(height: 6,),
                    SubtitleText(label: "Mithun@gmail.com",)
                  ],)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 6,),
                  Divider(
                    height: 1,
                  ),
                  SizedBox(height: 6,),
                  TitleText(label: "General"),
                  SizedBox(height: 10,),
                  CustomListTile(imagePath: AssetsManager.orderSvg, text: "All Orders", function: (){}),
                  CustomListTile(imagePath: AssetsManager.wishlistSvg, text: "Wishlist", function: (){}),
                  CustomListTile(imagePath: AssetsManager.recent, text: "View recently", function: (){}),
                  CustomListTile(imagePath: AssetsManager.address, text: "Address", function: (){}),
                  SizedBox(height: 6,),
                  Divider(
                    height: 1,
                  ),
                  SizedBox(height: 6,),
                  TitleText(label: "Settings"),
                  SizedBox(height: 10,),
                  SwitchListTile(
                    secondary: Image.asset(AssetsManager.theme,height: 34,),
                      title: Text(themeProvider.getIsDarkTheme ? "Dark Mode" : "Light Mode"),
                      value: themeProvider.getIsDarkTheme, onChanged: (value){
                    themeProvider.setDarkTheme(value);
                    print("the them bool ${themeProvider.getIsDarkTheme}");
                  }),
                  SizedBox(height: 6,),
                  Divider(
                    height: 1,
                  ),
                  SizedBox(height: 6,),
                  TitleText(label: "Others"),
                  SizedBox(height: 10,),
                  CustomListTile(imagePath: AssetsManager.warning, text: "Privarcy & Policy", function: (){})
                ],
              ),
            ),
            Center(
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                   padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    backgroundColor: Colors.redAccent
                  ),
                  onPressed: (){},icon: Icon(Icons.login,color: Colors.white,), label: Text('Login',style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      )
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.imagePath, required this.text, required this.function});
  final String imagePath,text;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return ListTile(onTap: (){
      function();
    },
      leading: Image.asset(imagePath,height: 34,),
      title: SubtitleText(label: text),
      trailing: Icon(IconlyLight.arrowRight2),
    );
  }
}
