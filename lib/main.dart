import 'dart:js';

import 'package:flutter/material.dart';
import 'package:new_project/contorller/app_controller.dart';
import 'package:new_project/screen/first_screen.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(
    ChangeNotifierProvider(
      create: (context)=>AppController(),
      child: MyApp())
    );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FirstScreen(),
    );
  }
}