import 'package:amazon_ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          titleSpacing: 20.0,
          color: Colors.white,
          elevation: 0,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),

      ),
      home: const HomePage(),
    );
  }
}
