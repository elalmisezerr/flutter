import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kariyer_hedefim/login_page_2.dart';
import 'package:kariyer_hedefim/pages/login_page.dart';

import 'main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LOGİN",
      home: LoginPage2(),
    );
  }
}
