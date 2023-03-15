import 'package:flutter/material.dart';
import 'package:learnflutter/screens/bootom_bar.dart';
import 'package:learnflutter/utils/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: primary),
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
    );
  }
}
