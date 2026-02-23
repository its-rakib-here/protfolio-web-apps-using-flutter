import 'package:flutter/material.dart';
import 'package:protfolio/mobile/landing_page_mobile.dart';
import 'package:protfolio/web/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(builder:
      (context,constrains){
        if(constrains.maxWidth>800)
          {
            return LandingPageWeb();
          }
         else
           {
             return LandingPageMobile();
           }
      },)
    );
  }
}





