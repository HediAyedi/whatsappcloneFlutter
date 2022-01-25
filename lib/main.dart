import 'package:flutter/material.dart';
import 'package:whatsappclone/colors.dart';
import 'package:whatsappclone/responsive/responsive_layout.dart';
import 'package:whatsappclone/screens/mobile_sreen_layout.dart';
import 'package:whatsappclone/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'What\'s App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: ResponsiveLayout(mobileScreenLayout:  MobileScreenLayout(), webScreenLayout:  WebScreenLayout()),
    );
  }
}
