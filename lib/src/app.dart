import 'package:flutter/material.dart';
import 'package:instagram_clone/src/ui/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Instagram',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.black,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage()
    );
  }
}