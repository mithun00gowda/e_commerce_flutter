import 'package:e_commerce/constants/theme_data.dart';
import 'package:e_commerce/provider/theme_provider.dart';
import 'package:e_commerce/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MainApp());
  });
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(providers: [
      ChangeNotifierProvider(create: (_){
        return ThemeProvider();
      })
    ],
    child: Consumer<ThemeProvider>(
      builder: (context,themeProvider,child){
        return MaterialApp(
        title: "E_Commerce",
        theme: Styles.themeData(isDarkTheme: themeProvider.getIsDarkTheme, context: context),
        debugShowCheckedModeBanner: false, home: HomeScreen());
      },
    ),
    );
  }
}
