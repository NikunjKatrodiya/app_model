import 'package:app_model/screen/biodata_screen.dart';
import 'package:app_model/screen/common_model_screen.dart';
import 'package:app_model/screen/cricket_screen.dart';
import 'package:app_model/screen/match_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const ModelCallingScreen(),
      //home: const CommonModelScreen(),
      //home: const MatchScreen(),
      home: const BioDataScreen(),
    );
  }
}
