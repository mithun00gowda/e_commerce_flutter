import 'dart:math';

import 'package:e_commerce/provider/theme_provider.dart';
import 'package:e_commerce/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //TODO ADD TEXT
           TitleText(),
          ElevatedButton(onPressed: () {}, child: const Text('Click Me')),
          SwitchListTile(
              title: Text(themeProvider.getIsDarkTheme ? "Dark Mode" : "Light Mode"),
              value: themeProvider.getIsDarkTheme, onChanged: (value){
            themeProvider.setDarkTheme(value);
            print("the them bool ${themeProvider.getIsDarkTheme}");
          })
        ],
      ),
    );
  }
}
